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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.38/Zot.xcframework.zip",
            checksum: "5330364c04f76a135e04b3e4af794d5e98f9f9fc7b3d3b958805c1233a5563fa"
        )
    ]
)
