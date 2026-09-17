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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.11/Zot.xcframework.zip",
            checksum: "9e8ae7dc2fae0da86cdda9f5a1a27637d55dd45de68339903af4c393b77f0da6"
        )
    ]
)
