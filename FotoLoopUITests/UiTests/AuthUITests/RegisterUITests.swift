//
//  RegisterUITests.swift
//  FotoLoopUITests
//
//  Created by David Lourenço on 07/10/2024.
//

import XCTest

final class RegisterUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {

        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["-UITest"]
        app.launch()

        // Go to register screen
        if app.buttons["SignUpButton"].waitForExistence(timeout: 3) {
            app.buttons["SignUpButton"].tap()
        } else {
            XCTFail("The sign up button should exist on screen.")
        }
    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testLogoExistence() throws {

        // Arrange
        let logoImage = app.images["LogoImage"]
        let logoText = app.staticTexts["LogoText"]

        // Act
        let logoImageExists = logoImage.waitForExistence(timeout: 3)
        let logoTextExists = logoText.waitForExistence(timeout: 3)

        let logoExists = logoImageExists && logoTextExists

        // Assert
        XCTAssertTrue(logoExists, "The logo should be on the screen.")
    }

    func testFormExistence() {

        // Arrange
        let registerFormUsernameTF = app.textFields["UsernameTF"]
        let registerFormEmailTF = app.textFields["RegisterEmailTF"]
        let registerFormPasswordTF = app.textFields["RegisterPasswordTF"]
        let registerFormRepeatPasswordTF = app.textFields["RepeatPasswordTF"]

        // Act
        let registerFormExists = (registerFormUsernameTF.waitForExistence(timeout: 3) &&
                                  registerFormEmailTF.waitForExistence(timeout: 3)
                                  && registerFormPasswordTF.waitForExistence(timeout: 3)
                                  && registerFormRepeatPasswordTF.waitForExistence(timeout: 3))
        // Assert
        XCTAssertTrue(registerFormExists, "The register form should exist.")
    }

    func testSignUpButtonExistence() {
        // Arrange
        let signUpButton = app.buttons["RegisterButton"]
        // Act
        let signUpButtonExists = signUpButton.waitForExistence(timeout: 3)
        // Assert
        XCTAssertTrue(signUpButtonExists, "The register button should exist.")
    }

    func testBackToLoginButtonExistence() {
        // Arrange
        let backToLoginButton = app.buttons["BackToLoginButton"]
        // Act
        let backToLoginButtonExists = backToLoginButton.waitForExistence(timeout: 3)
        // Assert
        XCTAssertTrue(backToLoginButtonExists, "The back to login button should exist.")
    }

    // Good for now
    func testRegisterButtonFunctionalityShouldGoToFeed() {
        // Arrange
        let registerButton = app.buttons["RegisterButton"]
        let feedTab = app.tabBars.buttons["FeedTab"]

        // Act
        if registerButton.waitForExistence(timeout: 3) {
            registerButton.tap()
        } else {
            XCTFail("The register button should exist")
        }

        // Assert
        XCTAssertTrue(feedTab.waitForExistence(timeout: 3), "The feed tab should be visible.")

    }

    func testBackToLoginButtonFunctionalityShouldGoToLogin() {
        // Arrange
        let backToLoginButton = app.buttons["BackToLoginButton"]
        let loginButton = app.buttons["LoginButton"]

        // Act

        if backToLoginButton.waitForExistence(timeout: 3) {
            backToLoginButton.tap()
        } else {
            XCTFail("The back to login button should exist.")
        }

        // Assert
        XCTAssertTrue(loginButton.waitForExistence(timeout: 3), "The login button should be visible.")

    }
}
