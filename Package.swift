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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.61/Zot.xcframework.zip",
            checksum: "6eca77521d4e7cf0a8d04d0f9fe793212d3b1c3f993b694fafd7da10347bbc07"
        )
    ]
)
