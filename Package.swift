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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.49/Zot.xcframework.zip",
            checksum: "0d56bd7b7b3f6f280040774fbfea67fb9d41333dbd3c7d6c2c7b5f27b5b63dc6"
        )
    ]
)
