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
        .binaryTarget(name: "DarockFoundation", url: "https://github.com/darock-studio/darockfoundation/releases/download/1.0.2/DarockFoundation.xcframework.zip", checksum: "84b9be41819c8d46afcbb9d74ceffb1619adcd7e49900fa56af7169dc0d514ea"),
        .target(name: "_DarockFoundationDependenciesWrapper", dependencies: [
            .product(name: "Alamofire", package: "Alamofire"),
            "SwiftyJSON"
        ])
    ]
)
