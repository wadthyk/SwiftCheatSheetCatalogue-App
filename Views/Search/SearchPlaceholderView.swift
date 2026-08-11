//
//  SearchPlaceholderView.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftUI
import SwiftData

/*
struct SearchPlaceholderView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView.search
        }
    }
}
*/

struct SearchPlaceholderView: View {
    // The search text is owned here — @State is correct since this
    // view is the source of truth for what's being typed
    @State private var searchText: String = ""
    
    // Access your SwiftData context to actually query results
    @Query private var allEntries: [CheatEntry]
    
    // Computed property — filters live as searchText changes
    var filteredEntries: [CheatEntry] {
        guard !searchText.isEmpty else { return [] }
        return allEntries.filter {
            $0.title.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        NavigationStack {
            Group {
                if searchText.isEmpty {
                    // Nothing typed yet — the system already shows
                    // a search-focused empty state via .search role,
                    // but this is a nice explicit fallback
                    ContentUnavailableView.search
                } else if filteredEntries.isEmpty {
                    ContentUnavailableView.search(text: searchText)
                } else {
                    List(filteredEntries) { entry in
                        NavigationLink(entry.title) {
                            EntryDetailView(entry: entry)
                        }
                    }
                }
            }
            .navigationTitle("Search")
        }
        // THIS is what plugs into the system's expand/collapse animation.
        // The role: .search tab looks for a .searchable() modifier
        // somewhere in its content to know how to present the field.
        .searchable(text: $searchText, prompt: "Search cheat sheets")
    }
}
