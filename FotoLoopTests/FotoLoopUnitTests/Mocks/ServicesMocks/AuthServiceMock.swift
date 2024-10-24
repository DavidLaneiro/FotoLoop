//
//  AuthServiceMock.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 24/10/2024.
//

import Foundation
@testable import FotoLoop

class AuthServiceMock: AuthServiceProtocol {

    // Mock implementation
    var shouldReturnError: Bool = false
    var mockUserID: String = "MockUserID"

    func createUser(_ email: String, _ password: String) async throws -> String {
        if shouldReturnError {
            throw FLErrors.signUpError(message: "Authentication error.")
        }
        return mockUserID
    }
}
