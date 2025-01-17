// swift-tools-version:5.4

import PackageDescription

let package = Package(
  name: "W3Connect",
  platforms: [
    .iOS(.v12),
    .macOS(.v10_12),
  ],
  products: [
    .library(
      name: "W3Connect",
      targets: ["W3Connect"]),
  ],
  dependencies: [
    // Core dependencies
    .package(name: "BigInt",
             url: "https://github.com/attaswift/BigInt.git",
             from: "5.0.0"),
    .package(name: "CryptoSwift",
             url: "https://github.com/krzyzanowskim/CryptoSwift.git",
             from: "1.0.0"),
    .package(name: "secp256k1",
             url: "git@github.com:Fenetik-NFT/secp256k1.swift.git",
             from: "0.3.0"),
    .package(name: "PromiseKit",
             url: "https://github.com/mxcl/PromiseKit.git",
             from: "6.0.0"),
  ],
  targets: [
    .target(
      name: "W3Connect",
      dependencies: ["BigInt", "CryptoSwift", "PromiseKit", "secp256k1"],
      path: "Sources"),
  ],
  swiftLanguageVersions: [.version("5.5")])
