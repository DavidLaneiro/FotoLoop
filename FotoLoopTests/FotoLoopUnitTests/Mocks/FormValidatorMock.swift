//
//  FormValidatorMock.swift
//  FotoLoopTests
//
//  Created by David Lourenço on 21/10/2024.
//

import Foundation
@testable import FotoLoop

class FormValidatorMock : FormValidatorProtocol{
    
    func validateUsername(_ username: String) -> Bool {
        // Validate username code
        return true
    }

    func validateEmail(_ email: String) -> Bool {
        // Validate email code
        return true
    }

    func validateFirstName(_ firstName: String) -> Bool {
        // Validate first name code
        return true
    }

    func validateLastName(_ lastName: String) -> Bool {
        // Validate last name code
        return true
    }

    func validatePassword(_ password: String) -> Bool {
        // Validate password code
        return true
    }

    func validateRepeatPassword(_ password: String, _ repeatPassword: String) -> Bool {
        // Validate repeat password code
        return true
    }

    
    func validateAllFields(username: String, email: String, firstName: String, lastName: String, password: String, repeatPassword: String) -> Bool {
        // Validate all fields code
        return true
    }
    
}