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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.64/Zot.xcframework.zip",
            checksum: "388a07c7e2a54c77c192e4806d513bcbb180cfbca8cac3ff8b008f0a28bbd0b9"
        )
    ]
)
