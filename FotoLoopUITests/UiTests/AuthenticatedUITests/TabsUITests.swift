//
//  TabsUITests.swift
//  FotoLoopUITests
//
//  Created by David Lourenço on 07/10/2024.
//

import XCTest

final class TabsUITests: XCTestCase {

    var app: XCUIApplication!

    override func setUpWithError() throws {

        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["-UITest"]
        app.launch()

        // Go to tabs screen
        if app.buttons["LoginButton"].waitForExistence(timeout: 3) {
            app.buttons["LoginButton"].tap()
        } else {
            XCTFail("The sign up button should exist on screen.")
        }

    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testFeedTabExistence() throws {

        // Arrange
        let tabBar = app.tabBars
        let feedTab = tabBar.buttons["FeedTab"]

        // Act
        let feedTabExists = feedTab.waitForExistence(timeout: 3)

        // Assert
        XCTAssertTrue(feedTabExists, "Feed tab should exist.")

    }

    func testProfileTabExistence() throws {
        // Arrange
        let tabBar = app.tabBars
        let profileTab = tabBar.buttons["ProfileTab"]

        // Act
        let profileTabExists = profileTab.waitForExistence(timeout: 3)

        // Assert
        XCTAssertTrue(profileTabExists, "Profile tab should exist.")

    }

    func testFeedScreenExistence() throws {
        // Arrange
        let tabBar = app.tabBars
        let feedTab = tabBar.buttons["FeedTab"]
        let feedScreen = app.staticTexts["FeedScreen"]

        // Act
        feedTab.tap()

        // Assert

        XCTAssertTrue(feedScreen.waitForExistence(timeout: 3), "The feed screen should be on display.")

    }

    func testProfileScreenExistence() throws {
        // Arrange
        let tabBar = app.tabBars
        let profileTab = tabBar.buttons["ProfileTab"]
        let profileScreen = app.staticTexts["ProfileScreen"]

        // Act
        profileTab.tap()

        // Assert
        XCTAssertTrue(profileScreen.waitForExistence(timeout: 3), "The profile screen should be on display.")

    }

}
