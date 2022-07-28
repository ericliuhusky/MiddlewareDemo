// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ComponentB",
    products: [
        .library(
            name: "ComponentB",
            targets: ["ComponentB"]),
    ],
    dependencies: [
        .package(path: "../Middleware")
    ],
    targets: [
        .target(
            name: "ComponentB",
            dependencies: ["Middleware"])
    ]
)
