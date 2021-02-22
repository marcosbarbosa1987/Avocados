//
//  AvocadosView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 21/02/21.
//

import SwiftUI

struct AvocadosView: View {
    
    // MARK: - Properties
    
    @State private var pulsateAnimation: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 2.0).repeatForever(autoreverses: true))
            
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                
                Text("""
Creamy, green, and full of nutrients!
Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                        .multilineTextAlignment(.center)
                    .lineSpacing(12)
                        .frame(maxWidth: 640, minHeight: 120)
            }//: VStack
            .padding()
            
            Spacer()
        }//: VStack
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
}

// MARK: - Preview

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .previewDevice("iPhone 12 Pro")
//            .environment(\.colorScheme, .dark)
    }
}
