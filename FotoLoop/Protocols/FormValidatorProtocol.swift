//
//  FormValidatorProtocol.swift
//  FotoLoop
//
//  Created by David Lourenço on 21/10/2024.
//

import Foundation

protocol FormValidatorProtocol {
    func validateUsername(_ username: String) -> Bool
    func validateEmail(_ email: String) -> Bool
    func validateFirstName(_ firstName: String) -> Bool
    func validateLastName(_ lastName: String) -> Bool
    func validatePassword(_ password: String) -> Bool
    func validateRepeatPassword(_ password: String, _ repeatPassword: String) -> Bool

    func validateAllFields(
        registerForm: RegisterForm
    ) -> Bool
}
