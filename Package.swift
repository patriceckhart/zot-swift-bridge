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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.15/Zot.xcframework.zip",
            checksum: "3c9c67b6a04221a3987d976a9fa20d1cf89230c11b7358dd449ac66eba91efc6"
        )
    ]
)
