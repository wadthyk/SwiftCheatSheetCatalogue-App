//
//  EntryListView.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftUI
import SwiftData

struct EntryListView: View {
    @Query private var entries: [CheatEntry]

    var body: some View {
        NavigationStack {
            List(entries) { entry in
                NavigationLink {
                    EntryDetailView(entry: entry)
                } label: {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(entry.title)
                            .font(.headline)

                        if let category = entry.category {
                            Text(category)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
            }
            .navigationTitle("Swift Cheat Sheet")
        }
    }
}
