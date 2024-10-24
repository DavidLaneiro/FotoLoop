//
//  RegisterServiceUnitTests.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 23/10/2024.
//

import XCTest
@testable import FotoLoop

final class RegisterServiceUnitTests: XCTestCase {

    var sut: RegisterService!
    var authServiceMock: AuthServiceMock!
    var firestoreServiceMock: FirestoreServiceMock!
    var registerForm: RegisterForm!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        authServiceMock = AuthServiceMock()
        firestoreServiceMock = FirestoreServiceMock()
        sut = RegisterService(authService: authServiceMock, firestoreService: firestoreServiceMock)
        registerForm = RegisterForm(id: UUID(), username: "user_name1",
                                    email: "example@example.com", firstName: "John",
                                    lastName: "Jones", password: "1Safe!Password",
                                    repeatPassword: "1Safe!Password")
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        authServiceMock = nil
        firestoreServiceMock = nil
        sut = nil
        registerForm = nil
    }

    func testRegisterUserWhenCreateUserIsNotSuccess() async throws {
        // Arrange
        authServiceMock.shouldReturnError = true
        let expectedError = FLErrors.signUpError(message: "Authentication error.").localizedDescription

        // Act & Assert
        do {

          let mockUserID = try await sut.registerUser(registerForm)
          XCTFail("An error was expected.")

        } catch let error as FLErrors {

            XCTAssertEqual(error.localizedDescription, expectedError,
                           "The error \(error) shoud be equal to: \(expectedError)")

        }

    }

    func testRegisterUserWhenSaveUserIsNotSuccess() async throws {
        // Arrange
        firestoreServiceMock.shouldReturnError = true
        let expectedError = FLErrors.signUpError(message: "Error saving user data.").localizedDescription

        // Act & Assert
        do {

          let mockUserID = try await sut.registerUser(registerForm)
          XCTFail("An error was expected.")

        } catch let error as FLErrors {

            XCTAssertEqual(error.localizedDescription, expectedError,
                           "The error \(error) shoud be equal to: \(expectedError)")

        }
    }

    func testRegisterUserSuccess() async throws {
        // Arrange
        let expectedUserMockID = "MockUserID"

        // Act & Assert
        do {

          let mockUserID = try await sut.registerUser(registerForm)

          let isUserIDEqual = expectedUserMockID == mockUserID

          XCTAssertTrue(isUserIDEqual,
                        "The expected id: \(expectedUserMockID) should be equal to the id received: \(mockUserID)")

        } catch let error as FLErrors {

            XCTFail("An error was not expected, error: \(error.localizedDescription)")

        }
    }

}
