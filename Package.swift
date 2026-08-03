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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.72/Zot.xcframework.zip",
            checksum: "40d66c3f1904584f1774e48e10a38b162b81d4f5236dc41a4c68bfd32aaa1145"
        )
    ]
)
