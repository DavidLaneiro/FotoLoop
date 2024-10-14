//
//  UIConstantsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 08/10/2024.
//

import XCTest
@testable import FotoLoop
import SwiftUI

final class UIConstantsUnitTests: XCTestCase {

    func testTabsUIConstantsValues() {

        // Arrange
        let expectedValues = [
            "text.below.photo.fill.rtl",
            "Feed",
            "person",
            "Profile"
        ]

        // Act
        let actualValues = [
            UIConstants.Tabs.feedIcon,
            UIConstants.Tabs.feedTitle,
            UIConstants.Tabs.profileIcon,
            UIConstants.Tabs.profileTitle
        ]

        // Assert
        for (index, expectedValue) in expectedValues.enumerated() {
            XCTAssertEqual(actualValues[index], expectedValue,
                           "The tab ui constant at position \(index) should be \(expectedValue)")
        }

    }

    func testLogoUIConstantsValues() {

        // Arrange
        let expectedValues = [
            "photo.on.rectangle.angled",
            "FotoLoop"
        ]

        // Act
        let actualValues = [
            UIConstants.Logo.logoIcon,
            UIConstants.Logo.logoTitle
        ]

        // Assert
        for (index, expectedValue) in expectedValues.enumerated() {
            XCTAssertEqual(actualValues[index], expectedValue,
                           "The logo ui constant at position \(index) should be \(expectedValue)")
        }

    }

}
