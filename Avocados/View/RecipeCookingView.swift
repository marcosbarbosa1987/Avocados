//
//  RecipeCookingView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 04/03/21.
//

import SwiftUI

struct RecipeCookingView: View {
    
    // MARK: - Properties
    
    let recipe: Recipe
    
    // MARK: - Body
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }
            
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }
        }
    }
}

// MARK: - Preview

struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
