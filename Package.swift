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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.7/Zot.xcframework.zip",
            checksum: "60ca2c782af5b5938d2eacf10c4b21cfd0f39eb003dafa7fdd5867d2986867bb"
        )
    ]
)
