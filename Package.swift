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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.9/Zot.xcframework.zip",
            checksum: "33a2f2b46983771ac0d23f9012acfd7a6be11280f571730e0dbe61ac78c9ab60"
        )
    ]
)
