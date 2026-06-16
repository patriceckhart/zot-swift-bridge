# zot swift bridge

A small Go package that exposes zot's agent runtime to Swift through `gomobile bind`.

The package name is `zot`, so Swift imports the generated framework as `Zot`.

## Install from Swift Package Manager

After a GitHub release exists, users can add this repository as a Swift Package dependency in Xcode:

```text
https://github.com/patriceckhart/zot-swift-bridge
```

Then import the product:

```swift
import Zot
```

Releases are versioned as `0.0.1`, `0.0.2`, ..., `0.0.99`, `0.1.0`, `0.1.1`, and so on.

## Local build

```sh
go install golang.org/x/mobile/cmd/gomobile@latest
gomobile init

cd ~/Developer/zot-swift/zot-swift-bridge
gomobile bind -target=ios,macos -o Zot.xcframework .
```

Use only iOS-safe tools in this package. The current bridge registers no shell or filesystem tools, so it is suitable as a starting point for an iOS chat app.

## Swift sketch

```swift
import Zot

final class ChatStream: NSObject, ZotStreamProtocol {
    func onText(_ delta: String?) {
        print(delta ?? "", terminator: "")
    }

    func onEvent(_ kind: String?, payload: String?) {
        print("event", kind ?? "", payload ?? "")
    }

    func onError(_ message: String?) {
        print("error", message ?? "")
    }

    func onDone() {
        print("done")
    }
}

var error: NSError?
let session = ZotNewSession(
    "anthropic",
    apiKey,
    "claude-sonnet-4-20250514",
    "You are a concise assistant.",
    &error
)

Task.detached {
    session?.prompt("Hello", stream: ChatStream())
}
```

## Release

Push this repo to GitHub, then run the `Release Swift Package` workflow manually.

The `Release When zot Updates` workflow also runs hourly. It checks the latest `github.com/patriceckhart/zot` release tag. If `go.mod` is behind, it updates the zot dependency, builds a new `Zot.xcframework.zip`, bumps this bridge's release version, updates `Package.swift`, and publishes a GitHub release.

If you leave `version` empty, the workflow auto-increments from the latest `0.x.y` tag:

```text
no tag -> 0.0.1
0.0.1 -> 0.0.2
0.0.99 -> 0.1.0
0.1.0 -> 0.1.1
```

The workflow builds `Zot.xcframework.zip`, computes the SwiftPM checksum, updates `Package.swift`, tags the commit, and attaches the zip to the GitHub release.

## Notes

- Do not embed provider API keys in a production app unless users supply their own keys.
- iOS cannot run zot's desktop shell/subprocess extension model.
- For macOS, you can keep this same API and add desktop-only tools later with Go build tags.

## License
MIT
