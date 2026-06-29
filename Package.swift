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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.15/Zot.xcframework.zip",
            checksum: "22fbe4b2a5514ad5789737256bf5af4bceeeb79e11c7e99820c5f7d0e5adad04"
        )
    ]
)
