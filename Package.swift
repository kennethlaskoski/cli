// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "kl",
    dependencies: [
        .package(url: "https://github.com/kennethlaskoski/KL.git", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],
    targets: [
        .executableTarget(
            name: "kl",
            dependencies: [
                .product(name: "KL", package: "KL", moduleAliases: ["KL": "Ken"]),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ],
            path: "Sources"),
    ]
)
