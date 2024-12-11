//
//  RecipeViewModel.swift
//  LokeRecipes
//
//  Created by Stephanie Ting on 12/11/24.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []

    // Add a recipe
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
        saveRecipes()
    }

    // Load recipes from persistent storage
    func loadRecipes() {
        if let data = UserDefaults.standard.data(forKey: "recipes") {
            if let savedRecipes = try? JSONDecoder().decode([Recipe].self, from: data) {
                recipes = savedRecipes
            }
        }
    }

    // Save recipes to persistent storage
    private func saveRecipes() {
        if let data = try? JSONEncoder().encode(recipes) {
            UserDefaults.standard.set(data, forKey: "recipes")
        }
    }
}
