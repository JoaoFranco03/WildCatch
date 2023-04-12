// swift-tools-version: 5.6

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "WildCatch",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "WildCatch",
            targets: ["AppModule"],
            bundleIdentifier: "joao-franco.WildCatch",
            teamIdentifier: "BFJTBBXTZ9",
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .placeholder(icon: .cat),
            accentColor: .presetColor(.blue),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ],
            capabilities: [
                .camera(purposeString: "Please Allow for Animal Identification with the Camera")
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "AppModule",
            path: ".",
            resources: [
                .process("Resources")
            ]
        )
    ]
)