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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.52/Zot.xcframework.zip",
            checksum: "d7bcfc9e4b5e19ab165c5a1303594b03a8cce08361c90d27cfa700e50a793123"
        )
    ]
)
