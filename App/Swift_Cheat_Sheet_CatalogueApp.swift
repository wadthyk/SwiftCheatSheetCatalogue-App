//
//  Swift_Cheat_Sheet_CatalogueApp.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftUI
import SwiftData

@main
struct Swift_Cheat_Sheet_CatalogueApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: CheatEntry.self) { result in
            switch result {
            case .success(let container):
                seedDatabaseIfNeeded(container: container)
            case .failure(let error):
                print("Failed to create ModelContainer: \(error)")
            }
        }
    }

    @MainActor
    private func seedDatabaseIfNeeded(container: ModelContainer) {
        let context = container.mainContext

        // Check if any entries already exist
        let descriptor = FetchDescriptor<CheatEntry>()
        let existingCount = (try? context.fetchCount(descriptor)) ?? 0

        guard existingCount == 0 else {
            return // already seeded, don't duplicate
        }

        for entry in SeedData.entries {
            context.insert(entry)
        }
    }
}
