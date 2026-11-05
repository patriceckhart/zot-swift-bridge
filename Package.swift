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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.66/Zot.xcframework.zip",
            checksum: "24922b169980c799ab011630a71a14c8e94c322e6d9b1a5404b948d9bb3bd8e7"
        )
    ]
)
