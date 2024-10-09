//
//  FLStringsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 09/10/2024.
//

import XCTest

@testable import FotoLoop
import SwiftUI

final class FLStringsUnitTests: XCTestCase {

    func testAttributedStringStyleValidityWhenCorrectSubtringProvided() {

        // Arrange
        let fullString = "Hello world!"
        let subString = "Hello"
        let expectedColor = Colors.white

        let attributedString = FLStrings.createAttributedString(stringToTransform: fullString,
                                                                substringToStyle: subString)

        guard let range = attributedString.range(of: subString) else {

            XCTFail("The range specified should exist. Check the values.")
            return
        }

        let rangeColor = attributedString[range].foregroundColor

        // Act
        let isRangeInValidColor = (rangeColor == expectedColor)

        // Assert
        XCTAssertTrue(isRangeInValidColor, "The color of the specified range is not correct. Check the values.")

    }

    func testAttributedStringValidityWhenIncorrectSubtringProvided() {

        // Arrange
        let fullString = "Hello world!"
        let subString = "Login"

        let attributedString = FLStrings.createAttributedString(stringToTransform: fullString,
                                                                substringToStyle: subString)
        // Act
        let range = attributedString.range(of: subString)

        // Assert
        XCTAssertNil(range, "The specified range should be nil.")

    }

    func testAttributedStringValidityWhenEmptySubtringProvided() {

        // Arrange
        let fullString = "Hello world!"
        let subString = ""

        let attributedString = FLStrings.createAttributedString(stringToTransform: fullString,
                                                                substringToStyle: subString)
        // Act
        let range = attributedString.range(of: subString)

        // Assert
        XCTAssertNil(range, "The range should be nil.")

    }

}
