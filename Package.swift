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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.65/Zot.xcframework.zip",
            checksum: "ce4c6aa99d81161c5c82d2d505df81ce75d898d0046c0637c1b79824f56bdd28"
        )
    ]
)
