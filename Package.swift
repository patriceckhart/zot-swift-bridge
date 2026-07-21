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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.48/Zot.xcframework.zip",
            checksum: "8920df0bc58863e1a9afb0852120b56c60c9703e2f1e6306781bd5b7ffb80503"
        )
    ]
)
