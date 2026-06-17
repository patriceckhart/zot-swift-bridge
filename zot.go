// Package zot exposes a small Swift-friendly wrapper around zot's agent runtime.
//
// Build an Apple xcframework with:
//
//	gomobile bind -target=ios,macos -o Zot.xcframework .
package zot

import (
	"context"
	"fmt"
	"os"
	"strings"
	"sync"

	zotagent "github.com/patriceckhart/zot/packages/agent"
	"github.com/patriceckhart/zot/packages/core"
	"github.com/patriceckhart/zot/packages/provider"
	providerauth "github.com/patriceckhart/zot/packages/provider/auth"
)

// Stream is implemented by Swift to receive streaming chat events.
type Stream interface {
	OnText(delta string)
	OnEvent(kind string, payload string)
	OnError(message string)
	OnDone()
}

// Session is a stateful zot conversation.
type Session struct {
	mu     sync.Mutex
	agent  *core.Agent
	cancel context.CancelFunc
	runID  int64
}

// NewSession creates a chat session with no file or shell tools using a provider API key.
//
// Supported API-key providers: anthropic, openai, openai-responses, gemini.
func NewSession(providerName, apiKey, model, systemPrompt string) (*Session, error) {
	client, defaultModel, err := newAPIKeyClient(providerName, apiKey)
	if err != nil {
		return nil, err
	}
	return newSessionFromClient(client, model, defaultModel, systemPrompt), nil
}

// NewSessionWithOAuth creates a chat session with no file or shell tools using a
// subscription OAuth access token.
//
// Supported OAuth providers: anthropic, openai-codex.
// For openai-codex, accountID must be the ChatGPT account id from the OpenAI
// id_token's chatgpt_account_id claim. Use ExtractOpenAIAccountID if Swift has
// the id_token.
func NewSessionWithOAuth(providerName, accessToken, accountID, model, systemPrompt string) (*Session, error) {
	client, defaultModel, err := newOAuthClient(providerName, accessToken, accountID)
	if err != nil {
		return nil, err
	}
	return newSessionFromClient(client, model, defaultModel, systemPrompt), nil
}

// ExtractOpenAIAccountID parses the ChatGPT account id from an OpenAI OAuth
// id_token. It returns an empty string if the token does not contain the claim.
func ExtractOpenAIAccountID(idToken string) string {
	return providerauth.ExtractOpenAIAccountID(idToken)
}

func newSessionFromClient(client provider.Client, model, defaultModel, systemPrompt string) *Session {
	if strings.TrimSpace(model) == "" {
		model = defaultModel
	}

	cwd, _ := os.Getwd()
	system := zotagent.BuildSystemPrompt(zotagent.SystemPromptOpts{
		CWD:    cwd,
		Custom: strings.TrimSpace(systemPrompt),
	})

	agent := core.NewAgent(client, model, system, core.NewRegistry())
	agent.MaxSteps = 8

	return &Session{agent: agent}
}

// Prompt sends one user message and streams the assistant response.
// It blocks until the turn completes, so Swift should call it from a background task.
func (s *Session) Prompt(message string, stream Stream) {
	if stream == nil {
		return
	}

	s.mu.Lock()
	ctx, cancel := context.WithCancel(context.Background())
	s.runID++
	runID := s.runID
	s.cancel = cancel
	s.mu.Unlock()

	err := s.agent.Prompt(ctx, message, nil, func(ev core.AgentEvent) {
		sendEvent(stream, ev)
	})
	if err != nil {
		stream.OnError(err.Error())
	}

	s.mu.Lock()
	if s.runID == runID {
		s.cancel = nil
	}
	s.mu.Unlock()

	stream.OnDone()
}

// Abort cancels the active prompt, if any.
func (s *Session) Abort() {
	s.mu.Lock()
	cancel := s.cancel
	s.mu.Unlock()
	if cancel != nil {
		cancel()
	}
}

func sendEvent(stream Stream, ev core.AgentEvent) {
	switch e := ev.(type) {
	case core.EvTextDelta:
		stream.OnText(e.Delta)
	case core.EvToolCall:
		stream.OnEvent("tool_call", fmt.Sprintf(`{"id":%q,"name":%q,"args":%q}`, e.ID, e.Name, string(e.Args)))
	case core.EvToolProgress:
		stream.OnEvent("tool_progress", fmt.Sprintf(`{"id":%q,"text":%q}`, e.ID, e.Text))
	case core.EvToolResult:
		stream.OnEvent("tool_result", fmt.Sprintf(`{"id":%q,"is_error":%t}`, e.ID, e.Result.IsError))
	case core.EvTurnStart:
		stream.OnEvent("turn_start", fmt.Sprintf(`{"step":%d}`, e.Step))
	case core.EvTurnEnd:
		if e.Err != nil {
			stream.OnError(e.Err.Error())
		}
		stream.OnEvent("turn_end", fmt.Sprintf(`{"stop":%q}`, string(e.Stop)))
	case core.EvUsage:
		stream.OnEvent("usage", fmt.Sprintf(`{"input_tokens":%d,"output_tokens":%d,"cost_usd":%g}`, e.Usage.InputTokens, e.Usage.OutputTokens, e.Usage.CostUSD))
	case core.EvError:
		stream.OnError(e.Err.Error())
	}
}

func newAPIKeyClient(name, apiKey string) (provider.Client, string, error) {
	switch strings.ToLower(strings.TrimSpace(name)) {
	case "", "anthropic":
		return provider.NewAnthropic(apiKey, ""), "claude-sonnet-4-5", nil
	case "openai":
		return provider.NewOpenAI(apiKey, ""), "gpt-5", nil
	case "openai-responses":
		return provider.NewOpenAIResponses(apiKey, ""), "gpt-5", nil
	case "gemini", "google":
		return provider.NewGemini(apiKey, ""), "gemini-2.5-pro", nil
	case "openai-codex", "codex", "chatgpt":
		return nil, "", fmt.Errorf("%s uses subscription OAuth; call NewSessionWithOAuth", name)
	default:
		return nil, "", fmt.Errorf("unsupported provider: %s", name)
	}
}

func newOAuthClient(name, accessToken, accountID string) (provider.Client, string, error) {
	providerName := strings.ToLower(strings.TrimSpace(name))
	if strings.TrimSpace(accessToken) == "" {
		return nil, "", fmt.Errorf("missing OAuth access token")
	}

	switch providerName {
	case "", "anthropic", "claude":
		return provider.NewAnthropicOAuth(accessToken, ""), "claude-sonnet-4-5", nil
	case "openai", "openai-codex", "codex", "chatgpt":
		if strings.TrimSpace(accountID) == "" {
			return nil, "", fmt.Errorf("missing ChatGPT account id for openai-codex")
		}
		return provider.NewOpenAICodex(accessToken, accountID, ""), "gpt-5.5", nil
	default:
		return nil, "", fmt.Errorf("unsupported OAuth provider: %s", name)
	}
}
