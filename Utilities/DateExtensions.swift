//
//  DateExtensions.swift
//  LokeRecipes
//
//  Created by Stephanie Ting on 12/11/24.
//

import Foundation

extension Date {
    func formatted() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.strong(from: self)
    }
}
