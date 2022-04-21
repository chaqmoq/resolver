// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "chaqmoq-resolver",
    products: [
        .library(name: "Resolver", targets: ["Resolver"])
    ],
    targets: [
        .target(name: "Resolver"),
        .testTarget(name: "ResolverTests", dependencies: [
            .target(name: "Resolver")
        ])
    ],
    swiftLanguageVersions: [.v5]
)
