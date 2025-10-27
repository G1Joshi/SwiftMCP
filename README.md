# SwiftMCP

A Swift implementation of the Model Context Protocol (MCP) for AI agent interactions.

## Overview

SwiftMCP is a Model Context Protocol (MCP) implementation in Swift, consisting of both server and client components.

### Requirements

- Swift 6.2+
- iOS 26+ / macOS 26+
- Xcode 26+

### Project Structure

The project is organized into two main components:

- `SwiftMCPServer`: The server implementation
- `SwiftMCPClient`: The client implementation

### Dependencies

- [MCP Swift SDK](https://github.com/modelcontextprotocol/swift-sdk)

### Installation

1. Clone the repository:

```bash
git clone <repo>
cd SwiftMCP
```

2. Build the project:

```bash
swift build
```

## Server

The SwiftMCP server component provides a Model Context Protocol server implementation in Swift. It enables AI agents to interact with Swift applications using the standard MCP protocol.

### Features

- Built with Swift 6.2+
- Implements MCP protocol over standard I/O
- Includes support for logging, prompts, resources, and tools
- Designed for iOS 26+ and macOS 26+

### Getting Started

1. Build the server:

```bash
swift build --product SwiftMCPServer
```

2. Run the server:

```bash
swift run SwiftMCPServer
```

### Server Component Details

The server component (`SwiftMCPServer`) is responsible for:

- Handling incoming MCP connections
- Managing model context
- Processing client requests
- Maintaining state synchronization

Location: `SwiftMCPServer/Sources`

## Client

The SwiftMCP client component allows Swift applications to connect to and interact with MCP-compatible AI agents.

### Features

- Built with Swift 6.2+
- Implements MCP client over standard I/O
- Designed for iOS 26+ and macOS 26+
- Simple API for initializing and communicating with MCP servers

### Getting Started

1. Build the client:

```bash
swift build --product SwiftMCPClient
```

2. Run the client:

```bash
swift run SwiftMCPClient
```

### Client Component Details

The client component (`SwiftMCPClient`) provides:

- Connection management to MCP server
- Model context synchronization
- Real-time updates handling
- Client-side state management

Location: `SwiftMCPClient/Sources`
