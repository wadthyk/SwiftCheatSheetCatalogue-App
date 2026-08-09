//
//  CheatEntry.swift
//  Swift Cheat Sheet Catalogue
//
//  Created by Vongwadthy Khieu on 09.08.26.
//

import SwiftData

@Model
class CheatEntry {
    var title: String
    var codeSnippet: String
    var explanation: String
    var tags: [String]
    var category: String?
    var imageFileName: String?
    
    init(
        title: String,
        codeSnippet: String,
        explanation: String,
        tags: [String] = [],
        category: String? = nil,
        imageFileName: String? = nil
    ) {
        self.title = title
        self.codeSnippet = codeSnippet
        self.explanation = explanation
        self.tags = tags
        self.category = category
        self.imageFileName = imageFileName
    }
}
