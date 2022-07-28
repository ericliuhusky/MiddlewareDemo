// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "Demo",
    dependencies: [
        .package(path: "../ComponentA"),
        .package(path: "../ComponentB")
    ],
    targets: [
        .executableTarget(
            name: "Demo",
            dependencies: ["ComponentA",
                           "ComponentB"])
    ]
)
