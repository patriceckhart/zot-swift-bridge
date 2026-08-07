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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.76/Zot.xcframework.zip",
            checksum: "459bb8c2ed4f79addaf7b6dad32c55efae4fd61b46a2e3297bfb65252e8773f9"
        )
    ]
)
