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

    func registerUser(_ registerUserForm: RegisterForm) async throws {
        
        // Create a do catch to get the errors
        do{
            // Add firebase method to register
            let authResult = try await Auth.auth().createUser(withEmail: registerUserForm.email, password: registerUserForm.password)
            
            // Get the id provided by firebase
            let userID = authResult.user.uid
            
            // Create user object
            let newUser = User(id: userID, name: "\(registerUserForm.firstName) \(registerUserForm.lastName)", username: registerUserForm.username, email: registerUserForm.email, createdAt: Date(), isActive: true)
            
            // Save this user to fire store
            let db = Firestore.firestore()
            
            try await db.collection("users").document(userID).setData([
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
