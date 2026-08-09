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
        .modelContainer(for: CheatEntry.self) // creates & attaches the SwiftData store
    }
}
