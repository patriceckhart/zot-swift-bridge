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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.38/Zot.xcframework.zip",
            checksum: "52739eda1d0e3478795b9f2b9f8b02578cbe5ea4372455c2ee29bf8efff1f263"
        )
    ]
)
