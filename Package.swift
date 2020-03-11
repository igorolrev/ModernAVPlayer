// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ModernAVPlayer",
    platforms: [SupportedPlatform.iOS(SupportedPlatform.IOSVersion.v10), SupportedPlatform.tvOS(SupportedPlatform.TVOSVersion.v10)],
    products: [
        .library(name: "ModernAVPlayer", targets: ["ModernAVPlayer"]),
        .library(name: "RxModernAVPlayer", targets: ["RxModernAVPlayer"])
    ],
	dependencies: [
		.package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "5.0.0"))
	],
    targets: [
        .target(
			name: "ModernAVPlayer", 
			path: "Sources/Core"
		),
        .target(
			name: "RxModernAVPlayer",
			dependencies: ["ModernAVPlayer", "RxSwift", "RxCocoa"],
			path: "Sources/RxModernAVPlayer"
		)
    ]
)

