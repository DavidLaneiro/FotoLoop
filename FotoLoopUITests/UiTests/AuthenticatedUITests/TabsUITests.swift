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
        
        print(app.images.firstMatch.identifier)
        
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
    
    func testFeedScreenExistance() throws {
        // Arrange
        let tabBar = app.tabBars
        let feedTab = tabBar.buttons["FeedTab"]
        let feedScreen = app.staticTexts["FeedScreen"]
        
        // Act
        feedTab.tap()

        // Assert

        XCTAssertTrue(feedScreen.exists, "The feed screen should be on display.")
                                
    }
    
    func testProfileScreenExistance() throws {
        // Arrange
        let tabBar = app.tabBars
        let profileTab = tabBar.buttons["ProfileTab"]
        let profileScreen = app.staticTexts["ProfileScreen"]
        
        // Act
        profileTab.tap()

        // Assert
        XCTAssertTrue(profileScreen.exists, "The profile screen should be on display.")
                                
    }
    

}
