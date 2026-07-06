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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.26/Zot.xcframework.zip",
            checksum: "5e80a7b84eaf1b86a7ef51511056fcfd0f92bee620f47a3b968f9edfe789b3cc"
        )
    ]
)
