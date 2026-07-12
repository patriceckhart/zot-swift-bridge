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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.33/Zot.xcframework.zip",
            checksum: "bd5f026ced72fa7fa9b2eaf4d6df81bdcbccc7994c83f864e0f4b6ad6c867495"
        )
    ]
)
