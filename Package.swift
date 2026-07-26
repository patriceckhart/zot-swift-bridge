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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.57/Zot.xcframework.zip",
            checksum: "02744ed3c01ff0c9451e4f08211f7fee51a9da1127ed2f57d0576da25b08d0ac"
        )
    ]
)
