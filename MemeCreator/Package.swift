// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MemeCreator",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MemeCreator",
            targets: ["MemeCreator"])
    ],
    dependencies: [
        .package(path: "../Common"),
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            from: .init("8.11.0")!),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MemeCreator",
            dependencies: [
                .product(name: "Common", package: "Common", condition: nil),
                .product(name: "FirebaseFirestore", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFirestoreSwift-Beta", package: "firebase-ios-sdk"),

            ]),
        .testTarget(
            name: "MemeCreatorTests",
            dependencies: ["MemeCreator"]),
    ]
)
