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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.84/Zot.xcframework.zip",
            checksum: "29e9934f9a8529759fd22fc6cd56968ed4961088bbec53688886c8d2ab7c3fd5"
        )
    ]
)
