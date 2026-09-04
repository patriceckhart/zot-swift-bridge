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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.97/Zot.xcframework.zip",
            checksum: "d03d8b71bd2cf4b25d0a16d8b9d2d11d4a306d7d0a9df871624a63e04b0212f7"
        )
    ]
)
