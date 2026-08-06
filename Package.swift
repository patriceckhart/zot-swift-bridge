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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.75/Zot.xcframework.zip",
            checksum: "7b508cb3363fd59447e3e3173cd0b8d749dbdef42f054c9227638e3fabc6360d"
        )
    ]
)
