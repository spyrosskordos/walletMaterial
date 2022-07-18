// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Common",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Common",
            targets: ["Common"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(
            url: "https://github.com/spyrosskordos/CoordinatorTools",
            from: .init("1.0.0")!),
        .package(path: "../AuthService"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Common",
            dependencies: [.product(name: "CoordinatorTools", package: "CoordinatorTools"),
                           .product(name: "AuthService", package: "AuthService")]),
        .testTarget(
            name: "CommonTests",
            dependencies: ["Common"]),
    ]
)
