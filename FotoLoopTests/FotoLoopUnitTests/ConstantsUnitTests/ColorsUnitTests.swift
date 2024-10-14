//
//  ColorsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 08/10/2024.
//

import XCTest
@testable import FotoLoop
import SwiftUI

final class ColorsUnitTests: XCTestCase {

    func testColorsValues() {
        // Arrange
        let expectedColors = [
            Color(hex: "#3E4E50"),
            Color(hex: "#F5AC72"),
            Color(hex: "#F2AA7E"),
            Color(hex: "#F8BD7F"),
            Color(hex: "#FACFAD"),
            Color(uiColor: .black),
            Color(uiColor: .white)
        ]

        // Act
        let actualColors = [
            Colors.spaceGray500,
            Colors.sandyBrownOrange500,
            Colors.sandyBrownOrange300,
            Colors.fawn500,
            Colors.apricot300,
            Colors.black,
            Colors.white
        ]

        // Assert
        for (index, expectedColor) in expectedColors.enumerated() {
            XCTAssertEqual(actualColors[index], expectedColor,
                           "The color constant at position \(index) should be \(expectedColor)")
        }

    }
}
