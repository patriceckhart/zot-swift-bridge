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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.81/Zot.xcframework.zip",
            checksum: "6dc9bef81926b2613fcdbe02458f68b84cd9584a843a4fa42bc765e5eaf271d7"
        )
    ]
)
