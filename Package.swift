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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.10/Zot.xcframework.zip",
            checksum: "46d8dc844e928c5bb66a9e9f71198ef455bf589ca36294c9adb876f7b9ac8e5f"
        )
    ]
)
