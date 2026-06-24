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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.14/Zot.xcframework.zip",
            checksum: "27474611ad4af640b73cff5d2a4f0d82189f72ae9c986c73d6549b9b1275efa4"
        )
    ]
)
