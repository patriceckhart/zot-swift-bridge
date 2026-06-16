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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.3/Zot.xcframework.zip",
            checksum: "5fef7ff4194a560ac8c53ac05473a1ee9f1f4e902196d6da394fca01cdde4a8c"
        )
    ]
)
