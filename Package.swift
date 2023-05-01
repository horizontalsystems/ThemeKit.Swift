// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "ThemeKit",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "ThemeKit",
                    targets: ["ThemeKit"]),
        ],
        dependencies: [
            .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0")),
            .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.6.2")),
            .package(url: "https://github.com/horizontalsystems/UIExtensions.Swift.git", .upToNextMajor(from: "1.0.1")),
            .package(url: "https://github.com/horizontalsystems/HsExtensions.Swift.git", .upToNextMajor(from: "1.0.6")),
        ],
        targets: [
            .target(
                    name: "ThemeKit",
                    dependencies: [
                        "Alamofire",
                        "Kingfisher",
                        .product(name: "UIExtensions", package: "UIExtensions.Swift"),
                        .product(name: "HsExtensions", package: "HsExtensions.Swift"),
                    ]
            ),
        ]
)
