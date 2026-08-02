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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.70/Zot.xcframework.zip",
            checksum: "39e568ca68c9a6b0f39daa7e734cf6fe81dbe885765198567ab6468e5ec15721"
        )
    ]
)
