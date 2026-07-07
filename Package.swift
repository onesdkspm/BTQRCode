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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTQRCode/1.1.0/BTQRCode.xcframework.zip",
            checksum: "69e18196a7be92fe402e6e9250bc845480efe1aa5d94f7e098588c46a0aa92e9"
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
