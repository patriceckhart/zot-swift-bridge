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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.51/Zot.xcframework.zip",
            checksum: "7eab2044bbfd1d8abffb472abe2a958c67696ac3bb2b0b93673964f1604f680f"
        )
    ]
)
