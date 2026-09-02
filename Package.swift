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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.95/Zot.xcframework.zip",
            checksum: "be0bfb84cd4bb0f1b417bff904013a63feb6b4fc50e741fbe1dd5acc180fd293"
        )
    ]
)
