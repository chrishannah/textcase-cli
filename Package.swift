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
    targets: [
        .executableTarget(
            name: "TextCase",
            dependencies: ["TextCaseKit"]
        ),
        .target(
            name: "TextCaseKit"),
        .testTarget(
            name: "TextCaseKitTests",
            dependencies: ["TextCaseKit"]
        ),
    ]
)
