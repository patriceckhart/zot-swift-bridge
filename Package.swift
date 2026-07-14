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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.39/Zot.xcframework.zip",
            checksum: "3e2c6c22f72c17ad300e2e4e35c8335d4ffe050e386bb921cc9a87814b351b9d"
        )
    ]
)
