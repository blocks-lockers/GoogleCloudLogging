// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "GoogleCloudLogging",
    platforms: [
        .macOS(.v14),
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "GoogleCloudLogging",
            targets: ["GoogleCloudLogging"]),
    ],
    dependencies: [
         .package(url: "https://github.com/apple/swift-log.git", from: "1.2.0"),
         .package(url: "https://github.com/Kitura/BlueRSA.git", from: "1.0.201"),
    ],
    targets: [
        .target(
            name: "GoogleCloudLogging",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "CryptorRSA", package: "BlueRSA"),
            ]),
        .testTarget(
            name: "GoogleCloudLoggingTests",
            dependencies: ["GoogleCloudLogging"]),
    ]
)
