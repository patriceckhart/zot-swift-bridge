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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.6/Zot.xcframework.zip",
            checksum: "18b11479d1d330b488f3db4c0706ed7fbeb5cf46faebdd54635f371cb3cefc84"
        )
    ]
)
