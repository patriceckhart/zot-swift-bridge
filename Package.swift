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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.23/Zot.xcframework.zip",
            checksum: "986b9cbeb51043a2db036d41a6d15fdfd86a1317a6ecf6dea6529343b8d88ad7"
        )
    ]
)
