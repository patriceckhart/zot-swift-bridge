// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ZotSwiftBridge",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(name: "Zot", targets: ["Zot"])
    ],
    targets: [
        .binaryTarget(
            name: "Zot",
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.16/Zot.xcframework.zip",
            checksum: "3629d4bcc88dd96b1c72e5ab5bd3d9f96aa0510cfac7a4829bc05fcfd2087cda"
        )
    ]
)
