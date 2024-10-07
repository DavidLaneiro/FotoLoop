//
//  LoginUITests.swift
//  FotoLoopUITests
//
//  Created by David Lourenço on 07/10/2024.
//

import XCTest

final class LoginUITests: XCTestCase {

    var app : XCUIApplication!
    
    override func setUpWithError() throws {

        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testLogoExistance() throws {
        
        // Arrange
        let logoImage = app.images["LogoImage"]
        let logoText = app.staticTexts["LogoText"]
        
        // Act
        let logoImageExists = logoImage.exists
        let logoTextExists = logoText.exists
        
        let logoExists = logoImageExists && logoTextExists
        
        // Assert
        XCTAssertTrue(logoExists, "The logo should be on the screen.")
    }


}
