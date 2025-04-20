// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftMCP",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
    ],
    products: [
        .executable(
            name: "SwiftMCPClient",
            targets: ["SwiftMCPClient"],
        ),
        .executable(
            name: "SwiftMCPServer",
            targets: ["SwiftMCPServer"],
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/modelcontextprotocol/swift-sdk.git", from: "0.7.1"),
    ],
    targets: [
        .executableTarget(
            name: "SwiftMCPClient",
            dependencies: [
                .product(name: "MCP", package: "swift-sdk"),
            ],
            path: "SwiftMCPClient/Sources",
        ),
        .executableTarget(
            name: "SwiftMCPServer",
            dependencies: [
                .product(name: "MCP", package: "swift-sdk"),
            ],
            path: "SwiftMCPServer/Sources",
        ),
    ]
)
