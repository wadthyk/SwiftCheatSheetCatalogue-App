//
//  AboutView.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack {
            ContentUnavailableView(
                "About",
                systemImage: "person.circle",
                description: Text("Coming soon.")
            )
            .navigationTitle("About")
        }
    }
}
