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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.16/Zot.xcframework.zip",
            checksum: "4ca20f4f11dfeb96b8b08d33092a980d91839049a3f75d8f25a0762cc389421a"
        )
    ]
)
