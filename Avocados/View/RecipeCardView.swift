//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 04/03/21.
//

import SwiftUI

struct RecipeCardView: View {
    
    // MARK: - Properteis
    
    var recipe: Recipe
    var feedback: UIImpactFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModel: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Card Image
            
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0   )
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12, content: {
               
                // Title
                
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                // Headline
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                    
                
                // Rates
                
                RecipeRatingView(recipe: recipe)
                
                // Cooking
                
                RecipeCookingView(recipe: recipe)
                .font(.footnote)
                .foregroundColor(.gray)
                
            })
            .padding()
            .padding(.bottom, 12)
            
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColoBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.feedback.impactOccurred()
            self.showModel = true
        }
        .sheet(isPresented: self.$showModel, content: {
            RecipeDetailView(recipe: self.recipe)
        })
    }
}

// MARK: - Preview

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
