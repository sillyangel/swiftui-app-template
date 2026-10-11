// swift-tools-version: 6.0
// Linux editing support only: gives sourcekit-lsp project-wide
// indexing/autocomplete in Neovim on Linux. iOS builds use
// XcodeGen (`xcodegen generate`); this file is ignored by CI.
import PackageDescription

let package = Package(
    name: "HelloWorld",
    platforms: [
        .iOS(.v26)
    ],
    products: [
        .library(
            name: "HelloWorld",
            targets: ["HelloWorld"]
        )
    ],
    targets: [
        .target(
            name: "HelloWorld",
            path: "Sources/navidrome",
            resources: [.process("Assets.xcassets")]
        )
    ]
)
