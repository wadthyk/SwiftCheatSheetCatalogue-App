//
//  RandomEntryView.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftUI
import SwiftData

struct RandomEntryView: View {
    @Query private var entries: [CheatEntry]
    @State private var randomEntry: CheatEntry?

    var body: some View {
        NavigationStack {
            Group {
                if let randomEntry {
                    EntryDetailView(entry: randomEntry)
                } else {
                    ContentUnavailableView(
                        "No Entries Yet",
                        systemImage: "shuffle",
                        description: Text("Add some cheat sheet entries first.")
                    )
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        pickRandomEntry()
                    } label: {
                        Image(systemName: "shuffle")
                    }
                }
            }
            .onAppear {
                pickRandomEntry()
            }
        }
    }

    private func pickRandomEntry() {
        randomEntry = entries.randomElement()
    }
}
