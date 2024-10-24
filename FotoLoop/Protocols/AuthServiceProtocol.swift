//
//  AuthServiceProtocol.swift
//  FotoLoop
//
//  Created by David Lourenço on 24/10/2024.
//

import Foundation

protocol AuthServiceProtocol{
    func createUser(_ withEmail: String, _ password: String) async throws -> String
}
