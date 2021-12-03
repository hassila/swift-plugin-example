// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-plugin-example",
    platforms: [
      .macOS(.v12)
    ],
    products: [
        .library(
            name: "PluginExample",
            type: .dynamic,
            targets: ["PluginExample"]),
    ],
    dependencies: [
      .package(url: "https://github.com/hassila/swift-plugin-example-api", branch: "main"),
      .package(url: "https://github.com/hassila/swift-plugin-manager-example-api", branch: "main"),
    ],
    targets: [
        .target(
            name: "PluginExample",
            dependencies: [
              .product(name: "PluginExampleAPI", package: "swift-plugin-example-api"),
              .product(name: "PluginManagerExampleAPI", package: "swift-plugin-manager-example-api")
            ]),
    ]
)
