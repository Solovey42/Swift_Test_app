// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift_Test_app",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Swift_Test_app1",
            dependencies: []),
        .target(
                name: "Swift_Test_app2",
                dependencies: []),
        .target(
                name: "Swift_Test_app3",
                dependencies: []),
        .target(
                name: "Swift_Test_app4",
                dependencies: []),
        .target(
                name: "Swift_Test_app5",
                dependencies: []),
        .testTarget(
            name: "Swift_Test_appTests1",
            dependencies: ["Swift_Test_app1"]),
        .testTarget(
                name: "Swift_Test_appTests2",
                dependencies: ["Swift_Test_app2"]),
    ]
)
