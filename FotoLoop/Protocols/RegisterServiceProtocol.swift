//
//  RegisterServiceProtocol.swift
//  FotoLoop
//
//  Created by David Lourenço on 22/10/2024.
//

import Foundation

protocol RegisterServiceProtocol{
    
    func registerUser(_ user: User) async throws
    
}
