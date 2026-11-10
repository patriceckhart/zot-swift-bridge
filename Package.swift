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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.72/Zot.xcframework.zip",
            checksum: "eb3a4b95b4348592a4525f411208baff23ce6fbdee66da413528a9aebf5a621f"
        )
    ]
)
