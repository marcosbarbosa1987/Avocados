//
//  CenterView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 22/02/21.
//

import SwiftUI

struct CenterView: View {
    var body: some View {
        
        HStack(alignment: .center, spacing: 12, content: {
            
            // MARK: - VStack
            
            VStack {
                let icons = iconsData.filter({$0.isLeading})
                ForEach(icons) { item in
                    CenterItemView(icon: item)
                    Divider()
                }
            }
            
            // MARK: - VStack
            
            VStack {
                HStack {
                    Divider()
                }
                
                Image(systemName: "heart.circle")
                
                HStack {
                    Divider()
                }
            }
            
            // MARK: - VStack
            
            VStack {
                let icons = iconsData.filter({!$0.isLeading})
                ForEach(icons) { item in
                    CenterItemView(icon: item)
                    Divider()
                }
            }
            
        })
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 250)
        
    }
}

struct CenterView_Previews: PreviewProvider {
    static var previews: some View {
        CenterView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
