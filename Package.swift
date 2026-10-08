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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.35/Zot.xcframework.zip",
            checksum: "c63e507d74586ee5d89004425ca28febc0c9d19be3ee7ecc728e9baed76bcd47"
        )
    ]
)
