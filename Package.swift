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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.56/Zot.xcframework.zip",
            checksum: "66fb4fe82fce06d7a95b27cf7e2ca30303f7d3a0b131e399bf537792d7471fb3"
        )
    ]
)
