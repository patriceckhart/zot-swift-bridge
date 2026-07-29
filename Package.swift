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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.65/Zot.xcframework.zip",
            checksum: "2b8810fa90cf8e33db8589690d1ea75328e87a94d61ae0d68bd192c0f38a9263"
        )
    ]
)
