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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.2/Zot.xcframework.zip",
            checksum: "24202f3f8099c948bb803cd1be34bd11983d7bf7c651f7aeceefe610a79a0d8b"
        )
    ]
)
