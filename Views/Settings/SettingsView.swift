//
//  SettingsView.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 20.08.26.
//

import SwiftUI

/*
//sample SettingsView created as a placeholder
struct SettingsView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "Settings",
                systemImage: "gearshape",
                description: Text("Coming soon.")
            )
            .navigationTitle("Settings")
        }
    }
}
*/


struct SettingsView: View {
    var body: some View {
        NavigationView {
            Form {
                ContentUnavailableView(
                    "Settings",
                    systemImage: "gearshape",
                    description: Text("Coming Soon")
                )
                .navigationTitle("Settings")
            }
        }
    }
}


#Preview {
    SettingsView()
}
