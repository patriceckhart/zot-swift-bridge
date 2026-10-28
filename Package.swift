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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.59/Zot.xcframework.zip",
            checksum: "f49b5741e0984cda0b10b313af3d8da32ea4ad1b7832cf7a8e9bcca596f50dcc"
        )
    ]
)
