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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.29/Zot.xcframework.zip",
            checksum: "423fae8ad085637a995dc72511a3e3da3caed036f63dd332f3ade3e9c9db1bf6"
        )
    ]
)
