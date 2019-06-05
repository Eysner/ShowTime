// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "ShowTime",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "ShowTime",
            targets: ["ShowTime"]),
    ],
    dependencies: [
        .package(url: "https://github.com/KaneCheshire/PixelTest.git", .branch("feature/spm"))
    ],
    targets: [
        .target(
            name: "ShowTime",
            dependencies: [],
            path: "Sources"),
        .testTarget(
            name: "ShowTimeTests",
            dependencies: ["ShowTime", "PixelTest"]),
    ]
)
