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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.13/Zot.xcframework.zip",
            checksum: "e7a21af5f90d86cbbbc0351e9a4a07e8a84a770d41eae75b3e97049fc6717bd7"
        )
    ]
)
