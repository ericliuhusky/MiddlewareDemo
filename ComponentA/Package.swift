// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ComponentA",
    products: [
        .library(
            name: "ComponentA",
            targets: ["ComponentA"]),
    ],
    dependencies: [
        .package(path: "../Middleware")
    ],
    targets: [
        .target(
            name: "ComponentA",
            dependencies: ["Middleware"])
    ]
)
