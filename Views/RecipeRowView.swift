//
//  RecipeRowView.swift
//  LokeRecipes
//
//  Created by Stephanie Ting on 12/11/24.
//

import SwiftUI

struct RecipeRowView: View {
    var recipe: Recipe

    var body: some View {
        HStack {
            Text(recipe.name)
                .font(.headline)
            Spacer()
            Text(recipe.dateAdded.formatted())
                .font(.subheadline)
        }
        .padding()
    }
}
