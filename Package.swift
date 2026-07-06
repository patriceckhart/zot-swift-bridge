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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.24/Zot.xcframework.zip",
            checksum: "5c79e8a65bfc83ba4d3247073f75926a82ed60c7163bfc425fbcf315d82f245f"
        )
    ]
)
