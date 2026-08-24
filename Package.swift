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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.88/Zot.xcframework.zip",
            checksum: "b8ca4587104c7e41fb7a618f9208640ef6e15650394bcee6e0d43984e10a3b64"
        )
    ]
)
