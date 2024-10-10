//
//  RegisterConstantsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 10/10/2024.
//

import XCTest
@testable import FotoLoop

final class RegisterConstantsUnitTests: XCTestCase {

    func testUsernameTitle() {
        XCTAssertEqual(RegisterConstants.Register.username, "Username", "The username title value does not match.")
    }

    func testEmailTitle() {
        XCTAssertEqual(RegisterConstants.Register.email, "Email", "The email title value does not match.")
    }

    func testPasswordTitle() {
        XCTAssertEqual(RegisterConstants.Register.password, "Password", "The password title value does not match.")
    }

    func testRepeatPasswordTitle() {
        XCTAssertEqual(RegisterConstants.Register.repeatPassword, "Repeat password",
                       "The repeat password title value does not match.")
    }

    func testSignupTitle() {
        XCTAssertEqual(RegisterConstants.Register.signUp, "Sign up",
                       "The sign up title value does not match.")
    }

    func testAlreadyHaveAccountTitle() {
        XCTAssertEqual(RegisterConstants.Register.alreadyHaveAccount, "Already have an account? Login",
                       "The already have an account title value does not match.")
    }
}
