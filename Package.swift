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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.78/Zot.xcframework.zip",
            checksum: "4b7357ae99928c1285b93cce1e28dfab45224abbdd4cdcbff55a3b32a8840da7"
        )
    ]
)
