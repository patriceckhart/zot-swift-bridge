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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.94/Zot.xcframework.zip",
            checksum: "7e1db150be7cc31640bc1df8d1237cb16dc0bfcb7bf7d8bdb3e0730b20da8a3b"
        )
    ]
)
