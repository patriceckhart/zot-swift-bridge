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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.52/Zot.xcframework.zip",
            checksum: "c01c7c15b83aff577e8442bebfac8a2a6bef7c23a377bf341775bf06f8d49d24"
        )
    ]
)
