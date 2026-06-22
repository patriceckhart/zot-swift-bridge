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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.10/Zot.xcframework.zip",
            checksum: "0c8e2a6ea2f210f230bad76a0468a3b69034023945a5e3e7667f664c04cc8cb5"
        )
    ]
)
