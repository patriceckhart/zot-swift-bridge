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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.77/Zot.xcframework.zip",
            checksum: "48ef66671a1bb23378d2e0c47d7a3635a070a2603a777e352a88ff8cefdb561e"
        )
    ]
)
