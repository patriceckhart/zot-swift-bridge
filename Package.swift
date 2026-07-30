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
            url: "https://github.com/patriceckhart/zot-swift-bridge/releases/download/0.0.66/Zot.xcframework.zip",
            checksum: "db0eab205b24f9ddb80ee599882d1d4906a654a98994bcb8a0bff96ce1681fea"
        )
    ]
)
