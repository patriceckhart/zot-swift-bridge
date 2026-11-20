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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.84/Zot.xcframework.zip",
            checksum: "97b96f2b6c94c4bb7c4980a2f66db509e97ca8787e48a7131e4ccc895772eadc"
        )
    ]
)
