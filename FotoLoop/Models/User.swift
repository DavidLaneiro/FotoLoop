//
//  User.swift
//  FotoLoop
//
//  Created by David Lourenço on 21/10/2024.
//

import Foundation

struct User: Codable, Identifiable {

    var id: String
    var name: String
    var username: String
    var email: String
    var profileImageUrl: URL?
    var birthDate: Date?
    var createdAt: Date
    var isActive: Bool

}
