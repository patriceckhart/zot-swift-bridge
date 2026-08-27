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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.90/Zot.xcframework.zip",
            checksum: "2e0b41ef35d16e51dd59f5016405de97614fa8b40a5aedec34f87edc3fe86c1c"
        )
    ]
)
