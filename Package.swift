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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.48/Zot.xcframework.zip",
            checksum: "9289828c299850d4e79891eaebba23ec0ca8be3b39e3f4630bd626b7c0b9afbe"
        )
    ]
)
