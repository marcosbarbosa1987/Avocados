//
//  AppView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 21/02/21.
//

import SwiftUI

struct AppView: View {
    
    // MARK: - Body
    
    var body: some View {
        
        TabView {
            
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            RecipesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Repening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }
            
        }//: TabView
        .accentColor(Color.primary)
    }
}

// MARK: - Preview

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
