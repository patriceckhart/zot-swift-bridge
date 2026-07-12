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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.34/Zot.xcframework.zip",
            checksum: "ae8b4c89738e6fd421ddf8a6a4bdb26e28eb72288420e66ae7beabb9342b289d"
        )
    ]
)
