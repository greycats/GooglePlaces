// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GooglePlaces",
    products: [
        .library(
            name: "GooglePlaces",
            targets: ["GooglePlaces"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "GooglePlaces",
            path: "GooglePlaces.xcframework"
        )
    ]
)
