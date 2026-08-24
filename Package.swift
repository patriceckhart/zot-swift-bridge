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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.89/Zot.xcframework.zip",
            checksum: "a3aee6d78d111abb8b8488af544e0cf0ccf895e71f79085da7619e80143ee3a9"
        )
    ]
)
