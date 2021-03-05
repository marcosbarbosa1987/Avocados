//
//  RecipeModel.swift
//  Avocados
//
//  Created by Marcos Barbosa on 04/03/21.
//

import SwiftUI

// MARK: - Recipe Model

struct Recipe: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
