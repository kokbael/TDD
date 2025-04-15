//
//  MenuGroupingTests.swift
//  AlbertosTests
//
//  Created by 김동영 on 4/15/25.
//

import XCTest
@testable import Albertos

final class MenuGroupingTests: XCTestCase {
    
    // 한 카테고리당 섹션이 하나씩 있어야 한다.
    func testMenuWithManyCategoriesReturnOneSectionPerCategory() {
        
    }
    
    // 카테고리가 하나인 경우 섹션도 하나여야 한다.
    func testMenuWithOneCategoryReturnsOneSection() {
        // Arrange: 카테고리가 하나인 메뉴
        let menu = [
            MenuItem(category: "pastas", name: "name"),
            MenuItem(category: "pastas", name: "other name"),
        ]
        
        // Act
        let sections = groupMenuByCategory(menu)
        
        // Assert
        XCTAssertEqual(sections.count, 1)
        
        // Arrange & Act
        do {
            let section = try XCTUnwrap(sections.first)
            
            // Assert
            XCTAssertEqual(section.items.count, 2)
            XCTAssertEqual(section.items.first?.name, "name")
            XCTAssertEqual(section.items.last?.name, "other name")
        } catch {
            XCTFail("Failed to unwrap section: \(error)")
        }
    }
    
    // 메뉴가 비어있으면 섹션도 비어있어야 한다.
    func testEmptyMenyReturnsEmptySections() {
        // Arrange: 빈 메뉴
        let menu = [MenuItem]()
        
        // Act
        let sections = groupMenuByCategory(menu)
        
        // Assert
        XCTAssertTrue(sections.isEmpty)
    }
}
