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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.76/Zot.xcframework.zip",
            checksum: "6587f2647ffcb7050578bcd852a07f2d44e0f927a2a25b39a826816c35d7cf01"
        )
    ]
)
