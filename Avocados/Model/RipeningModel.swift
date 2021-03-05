//
//  RipeningModel.swift
//  Avocados
//
//  Created by Marcos Barbosa on 04/03/21.
//

import SwiftUI

// MARK: - Ripening Model

struct Ripening: Identifiable {
    var id: UUID = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
