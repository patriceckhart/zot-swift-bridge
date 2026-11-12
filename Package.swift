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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.75/Zot.xcframework.zip",
            checksum: "016f4a5e79f047b85d8f8d0c9fed111a9d00470ede35ee686e2c8eda2cd337ef"
        )
    ]
)
