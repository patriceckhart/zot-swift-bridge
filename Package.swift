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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.47/Zot.xcframework.zip",
            checksum: "c85c9f9504d3426932e8c0a948a107c2090d6c5a453b8a4fba6f77605f77188e"
        )
    ]
)
