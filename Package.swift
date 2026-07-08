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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTQRCode/2.0.3/BTQRCode.xcframework.zip",
            checksum: "abcc26fe0f27872945da177aad2406e923b1e17f4d8d6f3463796e0430977631"
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
