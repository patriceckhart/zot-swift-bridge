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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.83/Zot.xcframework.zip",
            checksum: "680e144935cfc574eafc49f9b3e394b98bbb243e269771cf9c4e1bd5736ae8f5"
        )
    ]
)
