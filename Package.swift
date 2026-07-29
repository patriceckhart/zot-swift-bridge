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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.63/Zot.xcframework.zip",
            checksum: "2dede5277e2da1d79b37bebcebcbf644fef1781767b7e0e4dbbc8f924f3d787d"
        )
    ]
)
