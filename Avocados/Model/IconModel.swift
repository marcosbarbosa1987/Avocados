//
//  IconModel.swift
//  Avocados
//
//  Created by Marcos Barbosa on 22/02/21.
//

import SwiftUI

struct Icon: Identifiable {
    let id: UUID = UUID()
    let title: String
    let isLeading: Bool
}

// MARK: - Computed properties

extension Icon {
    var image: String {
        return "icon-\(title.lowercased())"
    }
}
