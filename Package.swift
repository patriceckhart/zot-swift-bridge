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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.26/Zot.xcframework.zip",
            checksum: "6a94fbb707ab4cfc8e56f5c8f7dbfa7968da9a398038e3ba988df4475040174f"
        )
    ]
)
