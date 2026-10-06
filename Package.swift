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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.34/Zot.xcframework.zip",
            checksum: "988101a0eb9e89e4d6ebc0d36358038659f4885bdfd45cd8caa0eb2f23b208aa"
        )
    ]
)
