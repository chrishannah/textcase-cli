// swift-tools-version: 5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "textcase",
    platforms: [.macOS(.v13)],
    products: [
        .library(name: "TextCaseKit", targets: ["TextCaseKit"]),
        .executable(name: "TextCase", targets: ["TextCase"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
    ],
    targets: [
        .executableTarget(
            name: "TextCase",
            dependencies: [
                "TextCaseKit",
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .target(
            name: "TextCaseKit"),
        .testTarget(
            name: "TextCaseKitTests",
            dependencies: ["TextCaseKit"]
        ),
    ]
)
