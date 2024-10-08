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

}
