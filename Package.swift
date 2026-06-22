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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.11/Zot.xcframework.zip",
            checksum: "45a0580ec702c6c4e4cb8290f3af8ffae41fd21dcfdd0392d55269ac9058724e"
        )
    ]
)
