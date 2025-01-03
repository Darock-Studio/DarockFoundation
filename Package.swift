// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DarockFoundation",
    products: [
        .library(name: "DarockFoundation", targets: ["DarockFoundation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.10.2"),
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "DarockFoundation", path: "DarockFoundation.xcframework"),
        .target(name: "_DarockFoundationDependenciesWrapper", dependencies: [
            "Alamofire",
            "SwiftyJSON"
        ])
    ]
)
