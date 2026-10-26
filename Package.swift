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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.58/Zot.xcframework.zip",
            checksum: "03a23ba5fda1ab990a64f3fda89c90699bd7cc216ddd61c493a1bc837052d89b"
        )
    ]
)
