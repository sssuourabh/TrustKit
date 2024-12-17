// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TrustKit",
    platforms: [
        .iOS(.v12), // Minimum supported iOS version
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "TrustKit",
            targets: ["TrustKit"]
        )
    ],
    targets: [
        .target(
            name: "TrustKit",
            path: "TrustKit", // Points to the TrustKit source folder
            exclude: ["Tests", "Examples"], // Exclude test and example files
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .define("TRUSTKIT", to: "1")
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
