//
//  Order.swift
//  Albertos
//
//  Created by 김동영 on 4/17/25.
//

import Foundation

struct Order {
    var items: [MenuItem]
    var total: Double {
        items.reduce(0) { $0 + $1.price }
    }
}
