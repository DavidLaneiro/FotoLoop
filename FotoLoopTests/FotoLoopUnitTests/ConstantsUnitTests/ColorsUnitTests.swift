//
//  ColorsUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 08/10/2024.
//

import XCTest
@testable import FotoLoop
import SwiftUI

final class ColorsUnitTests: XCTestCase {

    func testSpaceGray500Color() {
        let expectedColor = Color(hex: "#3E4E50")
        XCTAssertEqual(Colors.spaceGray500, expectedColor)
    }

    func testSandyBrownOrange500Color() {
        let expectedColor = Color(hex: "#F5AC72")
        XCTAssertEqual(Colors.sandyBrownOrange500, expectedColor)
    }

    func testSandyBrownOrange300Color() {
        let expectedColor = Color(hex: "#F2AA7E")
        XCTAssertEqual(Colors.sandyBrownOrange300, expectedColor)
    }

    func testFawn500Color() {
        let expectedColor = Color(hex: "#F8BD7F")
        XCTAssertEqual(Colors.fawn500, expectedColor)
    }

    func testApricot300Color() {
        let expectedColor = Color(hex: "#FACFAD")
        XCTAssertEqual(Colors.apricot300, expectedColor)
    }

    func testBlackColor() {
        let expectedColor = Color(uiColor: .black)
        XCTAssertEqual(Colors.black, expectedColor)
    }

    func testWhiteColor() {
        let expectedColor = Color(uiColor: .white)
        XCTAssertEqual(Colors.white, expectedColor)
    }

}
