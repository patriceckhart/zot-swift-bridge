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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.87/Zot.xcframework.zip",
            checksum: "4a8fa99074aa848a332ae3846be3d30046acdce1ef63aee3ca0cbc40328c0142"
        )
    ]
)
