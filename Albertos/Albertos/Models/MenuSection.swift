//
//  MenuSection.swift
//  Albertos
//
//  Created by 김동영 on 4/18/25.
//

import Foundation

struct MenuSection: Identifiable, Equatable {
    let category: String
    let items: [MenuItem]
    
    var id: String {
        category
    }
}
