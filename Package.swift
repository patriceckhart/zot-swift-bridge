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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.88/Zot.xcframework.zip",
            checksum: "d82a54b9d9748a6c25ef675c0349d4d3c9fdc45f68b538368e807b00e16944f7"
        )
    ]
)
