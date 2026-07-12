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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.36/Zot.xcframework.zip",
            checksum: "4f6984ad1ff9edd50f10940188573fe24d6dab3ecc39e489ee3d81e1dfa8774e"
        )
    ]
)
