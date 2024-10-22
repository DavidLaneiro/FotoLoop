//
//  RegisterForm.swift
//  FotoLoop
//
//  Created by David Lourenço on 22/10/2024.
//

import Foundation

struct RegisterForm: Codable, Identifiable {

    var id: UUID
    var username: String
    var email: String
    var firstName: String
    var lastName: String
    var password: String
    var repeatPassword: String

}
