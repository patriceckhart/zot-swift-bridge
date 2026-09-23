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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.18/Zot.xcframework.zip",
            checksum: "9e5ca3d1e7f2a948105d1c74f2c0be3d60fd9f0eeb6aa26d841185cc495aa760"
        )
    ]
)
