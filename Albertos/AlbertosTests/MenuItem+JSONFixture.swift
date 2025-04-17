//
//  MenuItem+JSONFixture.swift
//  AlbertosTests
//
//  Created by 김동영 on 4/17/25.
//

@testable import Albertos

extension MenuItem {
    static func jsonFixture(
        name: String = "name",
        category: String = "category",
        spicy: Bool = false,
        price: Double = 0.0
    ) -> String {
    """
    {
      "category": {
         "name": "\(category)"
       },
      "name": "\(name)",
      "spicy": \(spicy),
      "price": \(price)
    }
    """
    }
}
