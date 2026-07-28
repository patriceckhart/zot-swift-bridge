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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.62/Zot.xcframework.zip",
            checksum: "a18f8ea591ebd8ce309b6319cf73ecd6ba28a7dc4dba33e42e8d024747463898"
        )
    ]
)
