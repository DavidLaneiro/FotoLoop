//
//  LoginUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 08/10/2024.
//

import XCTest
@testable import FotoLoop

final class LoginUnitTests: XCTestCase {

    var login: Login!

    override func setUpWithError() throws {
        
        login = Login()

        

    }

    override func tearDownWithError() throws {
        login = nil
    }
    

}
