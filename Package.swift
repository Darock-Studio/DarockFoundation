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
        .binaryTarget(name: "DarockFoundation", url: "https://github.com/darock-studio/darockfoundation/releases/download/v1.0.1/DarockFoundation.xcframework.zip", checksum: "552f06c64b2a5d143911f2d62a4fdfaf0f21b523615c1864999f57c4c6a32174"),
        .target(name: "_DarockFoundationDependenciesWrapper", dependencies: [
            .product(name: "Alamofire", package: "Alamofire"),
            "SwiftyJSON"
        ])
    ]
)
