//
//  Recipe.swift
//  LokeRecipes
//
//  Created by Stephanie Ting on 12/11/24.
//

import Foundation

struct Recipe: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    var image: String // Store image names or URLs
    var ingredients: [String]
    var instructions: String
    var dateAdded: Date
}
