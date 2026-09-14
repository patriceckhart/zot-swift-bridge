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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.8/Zot.xcframework.zip",
            checksum: "6dd9b130ff0dfa8815f39cf2b0382f7939df2c583c9e20c75d7b91ae33a00b7c"
        )
    ]
)
