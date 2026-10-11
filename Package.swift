// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DarockFoundation",
    products: [
        .library(name: "DarockFoundation", targets: ["DarockFoundation", "_DarockFoundationDependenciesWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.10.2"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "DarockFoundation", url: "https://github.com/darock-studio/darockfoundation/releases/download/v1.0.0/DarockFoundation.xcframework.zip", checksum: "8772e9bb9a60d90e02af499d9496c91ffa9d3c51b0cf2e03dacff0acbfdef1f9"),
        .target(name: "_DarockFoundationDependenciesWrapper", dependencies: [
            .product(name: "Alamofire", package: "Alamofire"),
            "SwiftyJSON"
        ])
    ]
)
