//
//  FirestoreServiceProtocol.swift
//  FotoLoop
//
//  Created by David Lourenço on 24/10/2024.
//

import Foundation

protocol FirestoreServiceProtocol {
    func saveUserData(_ userID: String, _ documentData: [String: Any]) async throws
}
