//
//  SwiftMCPServer.swift
//  SwiftMCP
//
//  Created by Jeevan Chandra Joshi on 20/04/25.
//

import Foundation
import MCP

@main
struct SwiftMCPServer {
    static func main() async throws {
        print("Starting MCP...")

        do {
            let server = Server(
                name: "SwiftMCPServer",
                version: "0.1.0",
                capabilities: .init(
                    logging: .init(),
                    prompts: .init(listChanged: true),
                    resources: .init(subscribe: true, listChanged: true),
                    tools: .init(listChanged: true)
                ),
                configuration: .default
            )

            let transport = StdioTransport()
            try await server.start(transport: transport)
            print("Server Started at: \(server.name) \(server.version)")

            await server.waitUntilCompleted()

            await server.stop()
            print("Server Stopped...")
        } catch {
            print("Error: \(error)")
            exit(1)
        }
    }
}
