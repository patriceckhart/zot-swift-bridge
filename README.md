# zot swift bridge

Run the [zot](https://github.com/patriceckhart/zot) AI agent runtime natively inside your iOS and macOS apps.

This package compiles zot's Go agent core into an Apple `xcframework` using `gomobile`, then exposes a tiny, streaming, Swift-friendly API. You get an on-device chat session that talks directly to Anthropic, OpenAI, or Gemini, with no separate backend required.

- Native: ships as a binary `xcframework`, no Go toolchain needed by consumers.
- Streaming: text deltas, tool events, usage, and errors arrive as they happen.
- Cross-platform: one API for iOS and macOS.
- Small surface: three calls (`NewSession`, `prompt`, `abort`).

## Requirements

- iOS 15+ or macOS 12+
- Xcode 15+
- A provider API key (Anthropic, OpenAI, or Gemini)

## Install

In Xcode: File > Add Package Dependencies, then enter:

```text
https://github.com/patriceckhart/zot-swift-bridge
```

Or add it to your own `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/patriceckhart/zot-swift-bridge", from: "0.0.1")
]
```

Then import:

```swift
import Zot
```

## Quick start

```swift
import Zot

// 1. Receive streaming output by conforming to ZotStreamProtocol.
final class ChatStream: NSObject, ZotStreamProtocol {
    func onText(_ delta: String?) {
        print(delta ?? "", terminator: "")   // assistant text, token by token
    }

    func onEvent(_ kind: String?, payload: String?) {
        // kind: tool_call, tool_progress, tool_result, turn_start, turn_end, usage
        // payload: a small JSON string with the event details
    }

    func onError(_ message: String?) {
        print("error:", message ?? "")
    }

    func onDone() {
        print("\n[done]")
    }
}

// 2. Create a session.
var error: NSError?
let session = ZotNewSession(
    "anthropic",                       // anthropic | openai | openai-responses | gemini
    apiKey,                            // your provider API key
    "claude-sonnet-4-20250514",        // empty string "" uses the provider default
    "You are a concise assistant.",    // system prompt (optional)
    &error
)

// 3. Send a prompt. prompt() blocks until the turn ends, so run it off the main thread.
Task.detached {
    session?.prompt("Explain async/await in Swift in two sentences.", stream: ChatStream())
}
```

To cancel an in-flight response:

```swift
session?.abort()
```

## API

| Call | Description |
|---|---|
| `ZotNewSession(provider, apiKey, model, systemPrompt, &error)` | Creates a chat session. Pass `""` for `model` to use the provider default. |
| `session.prompt(_:stream:)` | Sends one user message and streams the reply. Blocks until the turn completes. |
| `session.abort()` | Cancels the active prompt, if any. |

### Stream callbacks (`ZotStreamProtocol`)

| Callback | When |
|---|---|
| `onText(_:)` | A chunk of assistant text. Concatenate to build the full reply. |
| `onEvent(_:payload:)` | A lifecycle/tool event with a JSON payload string. |
| `onError(_:)` | A non-fatal error occurred. |
| `onDone()` | The turn finished (success or failure). |

### Supported providers

`anthropic`, `openai`, `openai-responses`, `gemini`

## Security

- Do not hardcode provider API keys in a shipped app. Users can extract them.
- Prefer user-supplied keys, or proxy requests through your own server.
- iOS cannot run zot's desktop shell, filesystem, or subprocess tools. This bridge intentionally registers none of them, so it is safe for the App Store sandbox.

## Building the framework yourself

Consumers do not need this. It is only for contributors building `Zot.xcframework` locally.

```sh
go install golang.org/x/mobile/cmd/gomobile@latest
gomobile init

git clone https://github.com/patriceckhart/zot-swift-bridge
cd zot-swift-bridge
gomobile bind -target=ios,macos -o Zot.xcframework .
```

## Releases

Releases are published automatically by GitHub Actions and use the scheme `0.0.1`, `0.0.2`, ..., `0.0.99`, `0.1.0`, `0.1.1`.

- `Release Swift Package` runs on every push to `main` (and can be run manually). It builds the framework, computes the SwiftPM checksum, updates `Package.swift`, tags the commit, and publishes a GitHub release with the zipped framework attached.
- `Release When zot Updates` runs hourly. When a newer `github.com/patriceckhart/zot` version is available, it bumps the dependency and cuts a fresh release automatically.

## License

MIT
