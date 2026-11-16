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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.79/Zot.xcframework.zip",
            checksum: "fed8f6f71f98271fa897c2cc5fa3ed4951f8590adabafef0bcbdde604e8ae057"
        )
    ]
)
