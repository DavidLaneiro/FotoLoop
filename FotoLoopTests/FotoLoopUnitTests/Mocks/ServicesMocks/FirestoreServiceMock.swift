//
//  FirestoreServiceMock.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 24/10/2024.
//

import Foundation
@testable import FotoLoop

class FirestoreServiceMock: FirestoreServiceProtocol {

    // Mock implementation
    var shouldReturnError: Bool = false

    func saveUserData(_ userID: String, _ documentData: [String: Any]) async throws {
        if shouldReturnError {
            throw FLErrors.signUpError(message: "Error saving user data.")
        }
    }
}
