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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.44/Zot.xcframework.zip",
            checksum: "09a7b7955e9de40a1f4c4182c5a96e505b5d872b9b40f4da69ef37c7afe76829"
        )
    ]
)
