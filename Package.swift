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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.73/Zot.xcframework.zip",
            checksum: "4b3330d49c03cf5faf103727bb10dd4cf1e2d6d061c7f04fa91687cab164dbcb"
        )
    ]
)
