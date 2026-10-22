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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.53/Zot.xcframework.zip",
            checksum: "109ee7fe6db1d1d6e9d8ea62438d62f792ff6599eff828b9401f8136baaa35e1"
        )
    ]
)
