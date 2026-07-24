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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.54/Zot.xcframework.zip",
            checksum: "4fbef7a3badecf2d5ce6afab09b7837a3336f80711dfd9c5b8b7aabbd06141ad"
        )
    ]
)
