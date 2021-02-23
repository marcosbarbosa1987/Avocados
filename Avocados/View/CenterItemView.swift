//
//  CenterItemView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 22/02/21.
//

import SwiftUI

struct CenterItemView: View {
    
    // MARK: - Properties
    
    var icon: Icon
    
    // MARK: - Body
    
    var body: some View {
        
        HStack {
            
            if icon.isLeading {
                Image(icon.image)
                    .resizable()
                    .scaledToFit()
                
                Spacer()
                
                Text(icon.title)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color.gray.opacity(0.6))
            } else {
                
                Text(icon.title)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color.gray.opacity(0.6))
                
                Spacer()
                
                Image(icon.image)
                    .resizable()
                    .scaledToFit()
                
            }
        }
        .frame(maxHeight: 40)
    }
}

// MARK: - Preview

struct CenterItemView_Previews: PreviewProvider {
    static var previews: some View {
        CenterItemView(icon: iconsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
