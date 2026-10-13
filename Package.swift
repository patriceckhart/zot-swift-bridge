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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.44/Zot.xcframework.zip",
            checksum: "fb68e9f323906880f501fe06e06ca53ab04e06403b49801ea2761baafabae4b4"
        )
    ]
)
