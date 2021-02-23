//
//  RecipesView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 21/02/21.
//

import SwiftUI

struct RecipesView: View {
    
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: - Header
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headersData) { header in
                            HeaderView(header: header)
                        }//: Loop
                    }//: HStack
                }//: ScrollView
                
                CenterView()
                    .frame(maxWidth: 640)
                
                // MARK: - Footer
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All about Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(8)
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                }//: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            }//: VStack
        })//: ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

// MARK: - Preview

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
