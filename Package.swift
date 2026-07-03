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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.21/Zot.xcframework.zip",
            checksum: "d29fdd27795be5155bec07b60435db4fc3ece4d26f617e4fa8ab1e64e0ee33ab"
        )
    ]
)
