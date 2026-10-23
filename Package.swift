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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.54/Zot.xcframework.zip",
            checksum: "6c86f5de997c80a80c48036139422ec6a4f81e03ef0e1b05858e53f1c720b7ea"
        )
    ]
)
