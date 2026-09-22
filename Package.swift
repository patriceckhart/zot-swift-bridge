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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.1.17/Zot.xcframework.zip",
            checksum: "f1494450c44b746a6dcb9c4ea7e88ee1d76804a57ab9b0311cf7fa479cf66aa1"
        )
    ]
)
