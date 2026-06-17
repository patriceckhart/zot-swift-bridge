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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.5/Zot.xcframework.zip",
            checksum: "f928f87ecdd11f1c5be7bcd7592e60ff64f505a49685316fce5d4d308d76a6b1"
        )
    ]
)
