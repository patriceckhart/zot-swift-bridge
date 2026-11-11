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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.73/Zot.xcframework.zip",
            checksum: "32910ab5143a5dc4011b4aeb51c06bb511ed1af96b918c43b6306040c4ff730e"
        )
    ]
)
