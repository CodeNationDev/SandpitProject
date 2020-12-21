// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CaixaBankSwift",
    platforms: [
        // Add support for all platforms starting from a specific version.
        .iOS(.v11),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "CB_UIKit",
            targets: ["CB_UIKit"]),
        .library(
            name: "CB_Logger",
            targets: ["CB_Logger"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "CB_UIKit",
            dependencies: [],
            path: "Sources/CB_UIKit",
            exclude: ["./SandpitProject"]),
        .target(
            name: "CB_Logger",
            dependencies: [],
            path: "Sources/CB_Logger",
            exclude: ["./SandpitProject"])
    ]
)
