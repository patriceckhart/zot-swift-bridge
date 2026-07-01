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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.18/Zot.xcframework.zip",
            checksum: "140fd2fa73e47f7ee1dbc6f9fa4b819f7faefb72c7a232edfdaa2c85335d4243"
        )
    ]
)
