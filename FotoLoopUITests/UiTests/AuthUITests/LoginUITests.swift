//
//  LoginUITests.swift
//  FotoLoopUITests
//
//  Created by David Lourenço on 07/10/2024.
//

import XCTest

final class LoginUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {

        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testLogoExistence() throws {

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

    func testFormExistence() {

        // Arrange
        let loginFormEmailTF = app.textFields["EmailTF"]
        let loginFormPasswordTF = app.textFields["PasswordTF"]

        // Act
        let loginFormExists = (loginFormEmailTF.exists && loginFormPasswordTF.exists)
        // Assert
        XCTAssertTrue(loginFormExists, "The login form should exist.")
    }

    func testForgotPasswordButtonExistence() {
        // Arrange
        let forgotPasswordButton = app.buttons["ForgotPasswordButton"]
        // Act
        let forgotPasswordButtonExists = forgotPasswordButton.exists
        // Assert
        XCTAssertTrue(forgotPasswordButtonExists, "The forgot password should exist.")
    }

    func testLoginButtonExistence() {
        // Arrange
        let loginButton = app.buttons["LoginButton"]
        // Act
        let loginButtonExists = loginButton.exists
        // Assert
        XCTAssertTrue(loginButtonExists, "The login button should exist.")
    }

    func testSignUpButtonExistence() {
        // Arrange
        let signUpButton = app.buttons["SignUpButton"]
        // Act
        let signUpButtonExists = signUpButton.exists
        // Assert
        XCTAssertTrue(signUpButtonExists, "The signUp button should exist.")
    }

}
