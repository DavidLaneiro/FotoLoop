//
//  AuthService.swift
//  FotoLoop
//
//  Created by David Lourenço on 24/10/2024.
//

import Foundation
import FirebaseAuth

class AuthService : AuthServiceProtocol{
    
    // Real implementation
    func createUser(_ email: String, _ password: String) async throws -> String {
        let authResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return authResult.user.uid
    }
}
