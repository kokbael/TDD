//
//  MenuItem+Fixture.swift
//  AlbertosTests
//
//  Created by 김동영 on 4/15/25.
//

@testable import Albertos

extension MenuItem {
    static func fixture(
        category: String = "category",
        name: String = "name",
        spicy: Bool = false
    ) -> MenuItem {
        MenuItem(
            category: category,
            name: name,
            spicy: spicy
        )
    }
}
