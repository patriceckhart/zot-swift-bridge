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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.31/Zot.xcframework.zip",
            checksum: "f3efd37e6bc9f2975f13de2f54090c95b1dc2be6276f7971052ef335a01b19e4"
        )
    ]
)
