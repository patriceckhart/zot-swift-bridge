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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.71/Zot.xcframework.zip",
            checksum: "3a427e503c82a50cda826099f90c72ccd4cf0c23ac41dddd7bc1852f63b71366"
        )
    ]
)
