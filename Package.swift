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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTQRCode/2.0.2/BTQRCode.xcframework.zip",
            checksum: "c6d500b40c86235afd61810a25a5120046d60bb26d5fcdf0ab1e0422657479c8"
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
