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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.93/Zot.xcframework.zip",
            checksum: "2579d16e39c06438f447641048efe72cd1d6d6efe70f9510a5fcd8b8abd78e22"
        )
    ]
)
