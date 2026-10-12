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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.42/Zot.xcframework.zip",
            checksum: "dbad4f0ed30459602a2e119f1f731be0357b6360b6110ce0d6a4ff66b4991ad4"
        )
    ]
)
