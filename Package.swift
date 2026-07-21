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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.50/Zot.xcframework.zip",
            checksum: "3c210e9e1549fa5bdceff9fde0d865b7708ed4f7f43a5e1c44acad659545b3fa"
        )
    ]
)
