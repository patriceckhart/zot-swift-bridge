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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.53/Zot.xcframework.zip",
            checksum: "b06dd1e4f0b8271c88aac4724acc05e49292d9e1a93bbd2f6811811a0e8f7534"
        )
    ]
)
