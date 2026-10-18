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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.47/Zot.xcframework.zip",
            checksum: "eb43210456a5055c5b4f724dece50ecdd1cac6f7d4a69a229d017b079ac93cd6"
        )
    ]
)
