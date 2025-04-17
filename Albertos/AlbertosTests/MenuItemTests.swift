//
//  MenuItemTests.swift
//  AlbertosTests
//
//  Created by 김동영 on 4/17/25.
//


@testable import Albertos
import XCTest

final class MenuItemTests: XCTestCase {
    // 모든 입력 프로퍼티를 가진 JSON 데이터를 디코딩
    func testWhenDecodedFromJSONDataHasAllTheInputProperties() throws {
        let json = #"{ "name": "a name", "category": "a category", "spicy": true, "price": 0.0 }"#
        let data = try XCTUnwrap(json.data(using: .utf8))
        let item = try JSONDecoder().decode(MenuItem.self, from: data)
        XCTAssertEqual(item.name, "a name")
        XCTAssertEqual(item.category, "a category")
        XCTAssertEqual(item.spicy, true)
        XCTAssertEqual(item.price, 0.0)
    }
}
