// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "GoogleCloudLogging",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15),
        .tvOS(.v11),
        .watchOS(.v4),
    ],
    products: [
        .library(
            name: "GoogleCloudLogging",
            targets: ["GoogleCloudLogging"]),
    ],
    dependencies: [
         .package(url: "https://github.com/apple/swift-log.git", from: "1.2.0"),
         .package(url: "https://github.com/apple/swift-crypto.git", "1.0.0" ..< "3.0.0"),
    ],
    targets: [
        .target(
            name: "GoogleCloudLogging",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
                .product(name: "Crypto", package: "swift-crypto"),
            ]),
        .testTarget(
            name: "GoogleCloudLoggingTests",
            dependencies: ["GoogleCloudLogging"]),
    ]
)
