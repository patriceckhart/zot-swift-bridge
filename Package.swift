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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.30/Zot.xcframework.zip",
            checksum: "67ccdf1baf7947575c07ca629d6155e0cdbf5a9bf878a59b3eb78c62ebbb7667"
        )
    ]
)
