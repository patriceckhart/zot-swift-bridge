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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.64/Zot.xcframework.zip",
            checksum: "233a8c2983618d9d942a7ec0ce0078cd5d567e4d8febe443b7193fd8fbc53953"
        )
    ]
)
