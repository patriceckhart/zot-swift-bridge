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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.9/Zot.xcframework.zip",
            checksum: "89ba56999c1ab94e9bd30f315281bf670618b6e2a5b418c5a170794e2a8bf62f"
        )
    ]
)
