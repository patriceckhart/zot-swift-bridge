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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.74/Zot.xcframework.zip",
            checksum: "11e901d9dfb9123fa343a3e18c720ee0481be3fb05ba269957b0e7ed867e5178"
        )
    ]
)
