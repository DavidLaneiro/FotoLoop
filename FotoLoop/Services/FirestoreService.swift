//
//  FirestoreService.swift
//  FotoLoop
//
//  Created by David Lourenço on 24/10/2024.
//

import Foundation
import FirebaseFirestore

class FirestoreService : FirestoreServiceProtocol{
    
    // Real implementation
    func saveUserData(_ userID: String, _ documentData: [String : Any]) async throws {
        let db = Firestore.firestore()
        try await db.collection("users").document(userID).setData(documentData)
    }
}
