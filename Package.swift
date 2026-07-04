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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.22/Zot.xcframework.zip",
            checksum: "d3b52915e5b1ea8d5b01c58c3478088d673dafb61dfe93917cac95e0473afcd9"
        )
    ]
)
