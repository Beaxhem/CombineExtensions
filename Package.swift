// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "CombineExtensions",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "CombineExtensions",
            targets: ["CombineExtensions"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CombineExtensions",
            dependencies: []),
        .testTarget(
            name: "CombineExtensionsTests",
            dependencies: ["CombineExtensions"]),
    ]
)
