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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.87/Zot.xcframework.zip",
            checksum: "bc5c282cd0adf626bba3e92c92be67ef6a59850fb5edc02fcb252956ab942e16"
        )
    ]
)
