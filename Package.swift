// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MUHeader",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "MUHeader",
            targets: ["MUHeader"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/MoveUpwards/MUCore", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "MUHeader",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "MUHeaderTests",
            dependencies: ["MUHeader"],
            path: "Tests"
        ),
    ]
)
