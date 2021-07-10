# Resolver - A dependency injection framework
[![Swift](https://img.shields.io/badge/swift-5.3-brightgreen.svg)](https://swift.org/download/#releases) [![MIT License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://github.com/chaqmoq/resolver/blob/master/LICENSE/) [![Actions Status](https://github.com/chaqmoq/resolver/workflows/development/badge.svg)](https://github.com/chaqmoq/resolver/actions) [![Codacy Badge](https://app.codacy.com/project/badge/Grade/72724ae31a364cd3a790f968064d84a7)](https://www.codacy.com/gh/chaqmoq/resolver/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=chaqmoq/resolver&amp;utm_campaign=Badge_Grade) [![codecov](https://codecov.io/gh/chaqmoq/resolver/branch/master/graph/badge.svg?token=FomzPdGD42)](https://codecov.io/gh/chaqmoq/resolver) [![Contributing](https://img.shields.io/badge/contributing-guide-brightgreen.svg)](https://github.com/chaqmoq/resolver/blob/master/CONTRIBUTING.md) [![Twitter](https://img.shields.io/badge/twitter-chaqmoqdev-brightgreen.svg)](https://twitter.com/chaqmoqdev)

## Installation
### Swift
Download and install [Swift](https://swift.org/download)

### Swift Package
```shell
mkdir MyApp
cd MyApp
swift package init --type executable // Creates an executable app named "MyApp"
```

#### Package.swift
```swift
// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "MyApp",
    dependencies: [
        .package(name: "chaqmoq-resolver", url: "https://github.com/chaqmoq/resolver.git", .branch("master"))
    ],
    targets: [
        .target(name: "MyApp", dependencies: [
            .product(name: "Resolver", package: "chaqmoq-resolver")
        ]),
        .testTarget(name: "MyAppTests", dependencies: [
            .target(name: "MyApp")
        ])
    ]
)
```

### Build
```shell
swift build -c release
```

## Tests
```shell
swift test --enable-test-discovery --sanitize=thread
```
