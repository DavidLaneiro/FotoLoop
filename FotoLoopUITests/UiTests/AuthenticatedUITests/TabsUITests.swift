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
        app.launch()

    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testFeedTabExistance() throws {
        
        // Arrange
        let tabBar = app.tabBars
        let feedTab = tabBar.buttons["FeedTab"]
        
        // Act
        let feedTabExists = feedTab.exists

        // Assert
        XCTAssertTrue(feedTabExists, "Feed tab should exist.")
        
    }
    
    func testProfileTabExistance() throws {
        // Arrange
        let tabBar = app.tabBars
        let profileTab = tabBar.buttons["ProfileTab"]
        
        // Act
        let profileTabExists = profileTab.exists
        
        // Assert
        XCTAssertTrue(profileTabExists, "Profile tab should exist.")
        
    }

}
