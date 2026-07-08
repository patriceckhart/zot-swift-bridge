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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.28/Zot.xcframework.zip",
            checksum: "c65726cdbfa887e0dcc216c85a180c0a3c308e9eb5af3136d77dcb6121665ee0"
        )
    ]
)
