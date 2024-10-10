//
//  LoginConstantsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 10/10/2024.
//

import XCTest
@testable import FotoLoop

final class LoginConstantsUnitTests: XCTestCase {

    func testEmailTitle() {
        XCTAssertEqual(LoginConstants.Login.email, "Email", "The email title value does not match.")
    }

    func testPasswordTitle() {
        XCTAssertEqual(LoginConstants.Login.password, "Password", "The password title value does not match.")
    }

    func testForgotPasswordTitle() {
        XCTAssertEqual(LoginConstants.Login.forgotPassword, "Forgot password?",
                       "The forgot password title value does not match.")
    }

    func testLoginTitle() {
        XCTAssertEqual(LoginConstants.Login.login, "Login",
                       "The login title value does not match.")
    }

    func testSignupTitle() {
        XCTAssertEqual(LoginConstants.Login.signUp, "Don't have an account? Sign Up",
                       "The sign up title value does not match.")
    }

}
