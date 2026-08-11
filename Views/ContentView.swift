//
//  ContentView.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Catalogue", systemImage: "list.bullet.rectangle") {
                EntryListView()
            }

            Tab("Random", systemImage: "shuffle") {
                RandomEntryView()
            }

            Tab("About", systemImage: "person.circle") {
                AboutView()
            }

            Tab("Settings", systemImage: "gearshape") {
                SettingsView()
            }

            Tab(role: .search) {
                SearchPlaceholderView()
            } label: {
                Label("Search", systemImage: "magnifyingglass")
            }
        }
    }
}


#Preview {
    ContentView()
    .modelContainer(for: CheatEntry.self, inMemory: true)
}

