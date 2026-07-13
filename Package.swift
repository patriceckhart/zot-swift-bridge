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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.37/Zot.xcframework.zip",
            checksum: "2a4e892c1acfa92c0b4874abf7e5ad17be0e30bc0080fb42ecacced29bada0f3"
        )
    ]
)
