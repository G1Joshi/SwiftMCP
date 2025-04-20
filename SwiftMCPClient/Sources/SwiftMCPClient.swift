//
//  SwiftMCPClient.swift
//  SwiftMCP
//
//  Created by Jeevan Chandra Joshi on 20/04/25.
//

import Foundation
import MCP

@main
struct SwiftMCPClient {
    static func main() async throws {
        print("Starting MCP...")

        do {
            let client = Client(
                name: "SwiftMCPClient",
                version: "0.1.0",
                configuration: .default
            )

            let transport = StdioTransport()
            try await client.connect(transport: transport)

            let server = try await client.initialize()
            print("Connected to Server: \(server.serverInfo.name) \(server.serverInfo.version)")

            await client.disconnect()
            print("Client Disconnected...")
        } catch {
            print("Error: \(error)")
            exit(1)
        }
    }
}
