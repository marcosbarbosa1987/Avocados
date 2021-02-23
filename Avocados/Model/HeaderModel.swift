//
//  HeaderModel.swift
//  Avocados
//
//  Created by Marcos Barbosa on 22/02/21.
//

import SwiftUI

// MARK: - Header Model

struct Header: Identifiable {
    var id: UUID = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
