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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.68/Zot.xcframework.zip",
            checksum: "64cd7d71dd2f2bd723d33db5cacc02f07399c3539773a6c707da9bf38d3ebfa3"
        )
    ]
)
