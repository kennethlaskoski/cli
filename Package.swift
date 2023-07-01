// swift-tools-version: 5.7

//  Copyright © 2023 Kenneth Laskoski
//  SPDX-License-Identifier: Apache-2.0

import PackageDescription

let package = Package(
    name: "kl",
    products: [
      .executable(name: "kl", targets: ["cli"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kennethlaskoski/KL.git", branch: "main"),
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.0"),
    ],
    targets: [
        .executableTarget(
            name: "cli",
            dependencies: [
                .product(name: "KL", package: "KL"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
    ]
)
