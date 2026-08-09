//
//  SeedData.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import Foundation

struct SeedData {
    static let entries: [CheatEntry] = [
        CheatEntry(
            title: "TabView",
            codeSnippet: """
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }

                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
            """,
            explanation: "TabView creates a tab bar at the bottom of the screen, letting users switch between different top-level sections of your app. Each child view gets its own tabItem, which defines the icon and label shown in the tab bar.",
            tags: ["navigation", "layout"],
            category: "Navigation"
        ),
        
        CheatEntry(
            title: "VStack",
            codeSnippet: """
            VStack(alignment: .leading, spacing: 12) {
                Text("Title")
                    .font(.headline)

                Text("Subtitle")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            """,
            explanation: "VStack arranges its child views in a vertical line, top to bottom. The 'alignment' parameter controls how children line up horizontally (leading, center, trailing), and 'spacing' sets the gap between each child in points.",
            tags: ["layout", "stack"],
            category: "Layout"
        ),

        CheatEntry(
            title: "HStack",
            codeSnippet: """
            HStack(alignment: .center, spacing: 8) {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)

                Text("Favorite")
                    .font(.body)
            }
            """,
            explanation: "HStack arranges its child views in a horizontal line, left to right. Like VStack, 'alignment' controls how children line up vertically (top, center, bottom), and 'spacing' sets the horizontal gap between them.",
            tags: ["layout", "stack"],
            category: "Layout"
        ),

        CheatEntry(
            title: "NavigationStack",
            codeSnippet: """
            NavigationStack {
                List(items) { item in
                    NavigationLink(item.name) {
                        DetailView(item: item)
                    }
                }
                .navigationTitle("Items")
            }
            """,
            explanation: "NavigationStack manages a stack of views the user can drill into and back out of, similar to pushing/popping screens. NavigationLink creates a tappable row that pushes a new view onto the stack, and navigationTitle sets the title shown at the top of the current screen.",
            tags: ["navigation"],
            category: "Navigation"
        )
    ]
}
