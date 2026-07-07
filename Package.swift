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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/BTQRCode/2.0.2-dev-1480254/BTQRCode.xcframework.zip",
            checksum: "b52d9a142a4bd7beb56c03151a647e762e9d6610508010e6a8044924b55d4ee9"
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
