//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Marcos Barbosa on 21/02/21.
//

import SwiftUI

struct RipeningStagesView: View {
    
    // MARK: - Properties
    
    var ripeningStages: [Ripening] = ripeningData
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    
                    ForEach(ripeningStages) { ripening in
                        RipeningView(ripening: ripening)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

// MARK: - Preview
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
