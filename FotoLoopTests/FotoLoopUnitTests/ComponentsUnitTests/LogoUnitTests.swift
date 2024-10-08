//
//  LogoUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 08/10/2024.
//

import XCTest
@testable import FotoLoop
import SwiftUI

final class LogoUnitTests: XCTestCase {

    var logo: FLLogo!

    override func setUpWithError() throws {
        logo = FLLogo()
    }

    override func tearDownWithError() throws {
        logo = nil

    }

    func testLogoTitleValidity() {
        // Arrange
        let logoTitle = logo.logoTitle
        // Act
        let logoTitleIsValid = (logoTitle == "FotoLoop")
        // Assert
        XCTAssertTrue(logoTitleIsValid, "The app logo should title be valid, check the value.")

    }

    func testLogoIconValidity() {
        // Arrange
        let logoIcon = logo.logoIcon
        // Act
        let logoIconIsValid = (logoIcon == "photo.on.rectangle.angled")
        // Assert
        XCTAssertTrue(logoIconIsValid, "The app logo icon should be valid, check the value.")
    }

    func testLogoColorValidity() {
        // Arrange
        let logoColor = logo.logoColor
        // Act
        let logoColorIsValid = (logoColor == Color(uiColor: .white))
        // Assert
        XCTAssertTrue(logoColorIsValid, "The app logo color should be valid, check the value.")
    }

}
