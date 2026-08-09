//
//  EntryDetailView.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftUI

struct EntryDetailView: View {
    let entry: CheatEntry

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                Text(entry.codeSnippet)
                    .font(.system(.body, design: .monospaced))
                    .padding()
                    .background(.gray.opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 8))

                Text(entry.explanation)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle(entry.title)
    }
}
