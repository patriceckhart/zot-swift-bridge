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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.60/Zot.xcframework.zip",
            checksum: "4e2727041cdf02aec2444f5d13ec9ec1955853625fb5ffc7749d8728e731fac6"
        )
    ]
)
