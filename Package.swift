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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.46/Zot.xcframework.zip",
            checksum: "0e45f155df4f2a19ebd6ad4b0748557cbff5e6f06ef8f96871c6fdf2d2d69bc7"
        )
    ]
)
