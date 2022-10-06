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
            .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.0.0")),
            .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.1")),
            .package(url: "https://github.com/horizontalsystems/UIExtensions.Swift.git", .upToNextMajor(from: "1.0.0")),
        ],
        targets: [
            .target(
                    name: "ThemeKit",
                    dependencies: [
                        "Alamofire",
                        "Kingfisher",
                        "RxSwift",
                        .product(name: "RxCocoa", package: "RxSwift"),
                        .product(name: "UIExtensions", package: "UIExtensions.Swift"),
                    ]
            ),
        ]
)
