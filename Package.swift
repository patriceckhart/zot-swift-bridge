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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.82/Zot.xcframework.zip",
            checksum: "1b4ea400d0a61888db85981414fd965f02b54b6f0d69abd7410a69007043775a"
        )
    ]
)
