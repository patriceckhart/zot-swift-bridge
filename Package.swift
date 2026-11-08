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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.69/Zot.xcframework.zip",
            checksum: "6553f98091e942c75dd15e5ac20d7b53fdbb79918ef0ed39639a1a829b16c0bf"
        )
    ]
)
