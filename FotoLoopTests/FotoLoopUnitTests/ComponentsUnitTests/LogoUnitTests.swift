//
//  LogoUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 08/10/2024.
//

import XCTest
@testable import FotoLoop
import SwiftUI

final class LogoUnitTests: XCTestCase {

    var logo: FLLogo!

    override func setUpWithError() throws {
        logo = FLLogo()
    }

    override func tearDownWithError() throws {
        logo = nil

    }
}
