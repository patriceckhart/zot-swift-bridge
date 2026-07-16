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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.43/Zot.xcframework.zip",
            checksum: "c2aba817c7795aa2376f2f91776a8d1f4d4a0f2d2f95b1d49ea622b1c7d48108"
        )
    ]
)
