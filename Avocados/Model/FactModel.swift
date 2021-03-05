//
//  FactModel.swift
//  Avocados
//
//  Created by Marcos Barbosa on 04/03/21.
//

import SwiftUI

// MARK: - Fact Model

struct Fact: Identifiable {
    var id: UUID = UUID()
    var image: String
    var content: String
}
