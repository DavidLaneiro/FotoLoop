//
//  RegisterService.swift
//  FotoLoop
//
//  Created by David Lourenço on 22/10/2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterService: RegisterServiceProtocol {
    
    private let authService : AuthServiceProtocol
    private let firestoreService : FirestoreServiceProtocol
    
    init(authService: AuthServiceProtocol, firestoreService: FirestoreServiceProtocol) {
        self.authService = authService
        self.firestoreService = firestoreService
    }

    func registerUser(_ registerUserForm: RegisterForm) async throws {
        
        // Create a do catch to get the errors
        do{
            
            // Get the id provided by firebase
            let userID = try await authService.createUser(registerUserForm.email, registerUserForm.password)
            
            // Create user object
            let newUser = User(id: userID, name: "\(registerUserForm.firstName) \(registerUserForm.lastName)", username: registerUserForm.username, email: registerUserForm.email, createdAt: Date(), isActive: true)
            
            // Save user to Firestore
            try await firestoreService.saveUserData(userID, [
                "name": newUser.name,
                "username": newUser.username,
                "email": newUser.email,
                "createdAt": newUser.createdAt,
                "isActive": newUser.isActive
            ])
            
        }catch (let error as FLErrors){
            throw FLErrors.signUpError(message: error.localizedDescription)
        }
    }
}
