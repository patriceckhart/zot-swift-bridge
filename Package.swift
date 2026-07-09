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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.30/Zot.xcframework.zip",
            checksum: "845f70562ed8c411ea599f1972e50505b097e05f6c7f80aa3d8b8ba42076f9b2"
        )
    ]
)
