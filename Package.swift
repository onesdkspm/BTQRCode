// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BTQRCode",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "BTQRCode",
            targets: ["BTQRCode", "BTQRCodeCommonResources"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "BTQRCode",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTQRCode/1.1.0-dev-1474966/BTQRCode.xcframework.zip",
            checksum: "329a42fb9b1acfa37608b205a60382cbeb3bc492cfcc39c77a28b8a9c20f7fc3"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "BTQRCodeCommonResources",
            dependencies: [],
            path: "BTQRCodeCommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)
