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

    func testFeedIconSystemName() {
        XCTAssertEqual(UIConstants.Tabs.feedIcon, "text.below.photo.fill.rtl", "The feed icon value does not match.")
    }

    func testFeedTitle() {
        XCTAssertEqual(UIConstants.Tabs.feedTitle, "Feed", "The feed title value does not match.")
    }

    func testProfileIconSystemName() {
        XCTAssertEqual(UIConstants.Tabs.profileIcon, "person", "The profile icon value does not match.")
    }

    func testProfileTitle() {
        XCTAssertEqual(UIConstants.Tabs.profileTitle, "Profile", "The profile title value does not match.")
    }

    func testLogoColor() {
        XCTAssertEqual(UIConstants.Logo.logoColor, Colors.white, "The logo color value does not match.")
    }

    func testLogoIcon() {
        XCTAssertEqual(UIConstants.Logo.logoIcon, "photo.on.rectangle.angled", "The logo icon value does not match.")
    }

    func testLogoTitle() {
        XCTAssertEqual(UIConstants.Logo.logoTitle, "FotoLoop", "The logo title value does not match.")
    }

    func testEmailTitle() {
        XCTAssertEqual(UIConstants.Login.email, "Email", "The email title value does not match.")
    }

    func testPasswordTitle() {
        XCTAssertEqual(UIConstants.Login.password, "Password", "The password title value does not match.")
    }

    func testForgotPasswordTitle() {
        XCTAssertEqual(UIConstants.Login.forgotPassword, "Forgot password?",
                       "The forgot password title value does not match.")
    }

    func testLoginTitle() {
        XCTAssertEqual(UIConstants.Login.login, "Login",
                       "The login title value does not match.")
    }

    func testSignupTitle() {
        XCTAssertEqual(UIConstants.Login.signUp, "Don't have an account? Sign Up",
                       "The sign up title value does not match.")
    }

}
