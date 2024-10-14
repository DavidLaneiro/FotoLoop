//
//  RegisterConstantsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 10/10/2024.
//

import XCTest
@testable import FotoLoop

final class RegisterConstantsUnitTests: XCTestCase {

    func testRegisterConstantsValues() {
        // Arrange
        let expectedValues = [
            "Username",
            "Email",
            "Password",
            "Repeat password",
            "Sign up",
            "Already have an account? Login"
        ]

        // Act
        let actualValues = [
            RegisterConstants.Register.username,
            RegisterConstants.Register.email,
            RegisterConstants.Register.password,
            RegisterConstants.Register.repeatPassword,
            RegisterConstants.Register.signUp,
            RegisterConstants.Register.alreadyHaveAccount

        ]

        // Assert
        for (index, expectedValue) in expectedValues.enumerated() {
            XCTAssertEqual(actualValues[index], expectedValue,
                           "The register constant at position \(index) should be \(expectedValue)")
        }

    }
}
