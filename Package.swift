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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.86/Zot.xcframework.zip",
            checksum: "c4c9fc3bda009cc36de0424a1663b6574ca09b0a3d28645d70e5f9ce50c4c119"
        )
    ]
)
