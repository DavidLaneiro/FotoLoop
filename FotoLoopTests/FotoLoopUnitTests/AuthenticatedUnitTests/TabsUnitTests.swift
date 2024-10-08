//
//  TabsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 08/10/2024.
//

import XCTest

@testable import FotoLoop

final class TabsUnitTests: XCTestCase {

    var tabs: Tabs!

    override func setUpWithError() throws {
        tabs = Tabs()
    }

    override func tearDownWithError() throws {
        tabs = nil
    }

    func testFeedTabIconValidity() {
        // Arrange
        let feedTabIcon = tabs.feedIconSystemName

        // Act
        let isFeedTabIconValid = (feedTabIcon == "text.below.photo.fill.rtl")

        // Assert
        XCTAssertTrue(isFeedTabIconValid, "The feed tab icon is invalid, check the value.")
    }

    func testProfileTabIconValidity() {
        // Arrange
        let profileTabIcon = tabs.profileIconSystemName

        // Act
        let isProfileTabIconValid = (profileTabIcon == "person")

        // Assert
        XCTAssertTrue(isProfileTabIconValid, "The profile tab icon is invalid, check the value.")
    }

    func testFeedTabTitleValidity() {
        // Arrange
        let feedTabTitle = tabs.feedTitleSystemName

        // Act
        let isFeedTabTitleValid = (feedTabTitle == "Feed")

        // Assert
        XCTAssertTrue(isFeedTabTitleValid, "The feed tab title is invalid, check the value.")
    }

    func testProfileTabTitleValidity() {
        // Arrange
        let profileTabTitle = tabs.profileTitleSystemName

        // Act
        let isProfileTabTitleValid = (profileTabTitle == "Profile")

        // Assert
        XCTAssertTrue(isProfileTabTitleValid, "The profile tab title is invalid, check the value.")
    }

}
