//
//  MenuSection+Fixture.swift
//  AlbertosTests
//
//  Created by 김동영 on 4/15/25.
//

@testable import Albertos

extension MenuSection {
    static func fixture(
        category: String = "category",
        items: [MenuItem] = [.fixture()]
    ) -> MenuSection {
        MenuSection(
            category: category,
            items: items
        )
    }
}
