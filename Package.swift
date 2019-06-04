// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "MUHeader",
    products: [
        .library(
            name: "MUHeader",
            targets: ["MUHeader"]
        ),
    ],
    dependencies: [],
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
