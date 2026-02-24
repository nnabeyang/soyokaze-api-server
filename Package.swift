// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "soyokaze-api-server",
  platforms: [.iOS(.v18), .macOS(.v14)],
  products: [
    .library(
      name: "SoyokazeAPIServer",
      targets: ["SoyokazeAPIServer"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/nnabeyang/swift-atproto", exact: "0.33.0"),
    .package(url: "https://github.com/apple/swift-openapi-runtime", exact: "1.9.0")
  ],
  targets: [
    .target(
      name: "SoyokazeAPIServer",
      dependencies: [
        .product(name: "SwiftAtproto", package: "swift-atproto"),
        .product(name: "OpenAPIRuntime", package: "swift-openapi-runtime")
      ]
    )
  ]
)
