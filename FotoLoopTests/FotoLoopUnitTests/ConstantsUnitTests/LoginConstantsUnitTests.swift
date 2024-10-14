//
//  LoginConstantsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 10/10/2024.
//

import XCTest
@testable import FotoLoop

final class LoginConstantsUnitTests: XCTestCase {

    func testLoginConstantsValues() {
        // Arrange
        let expectedValues = [
            "Email",
            "Password",
            "Forgot password?",
            "Login",
            "Don't have an account? Sign Up"
        ]

        // Act
        let actualValues = [
            LoginConstants.Login.email,
            LoginConstants.Login.password,
            LoginConstants.Login.forgotPassword,
            LoginConstants.Login.login,
            LoginConstants.Login.signUp
        ]

        // Assert
        for (index, expectedValue) in expectedValues.enumerated() {
            XCTAssertEqual(actualValues[index], expectedValue,
                           "The login constant at position \(index) should be \(expectedValue)")
        }

    }
}
