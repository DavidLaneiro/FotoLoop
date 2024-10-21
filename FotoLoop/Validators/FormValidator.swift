//
//  FormValidator.swift
//  FotoLoop
//
//  Created by David Lourenço on 21/10/2024.
//

import Foundation

class FormValidator: FormValidatorProtocol {

    func validateUsername(_ username: String) -> Bool {
        
        // Validate username code
        let usernameIsNotEmpty = !username.isEmpty
        let usernameIsValidCount = (username.count > 2 && username.count <= 9)
        
        return usernameIsNotEmpty && usernameIsValidCount
        
    }

    func validateEmail(_ email: String) -> Bool {
        
        // Validate email code
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
        
    }

    func validateFirstName(_ firstName: String) -> Bool {
        
        // Validate first name code
        let firstNameIsNotEmpty = !firstName.isEmpty
        let firstNameIsValidCount = (firstName.count > 2 && firstName.count <= 9)
        
        return firstNameIsNotEmpty && firstNameIsValidCount
        
    }

    func validateLastName(_ lastName: String) -> Bool {
        
        // Validate last name code
        let lastNameIsNotEmpty = !lastName.isEmpty
        let lastNameIsValidCount = (lastName.count > 2 && lastName.count <= 9)
        
        return lastNameIsNotEmpty && lastNameIsValidCount
    }

    func validatePassword(_ password: String) -> Bool {
        
        // Validate password code
        let passwordRegex = "^(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$&*]).{8,}$"
        let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", passwordRegex)
        return passwordPredicate.evaluate(with: password)
        
    }

    func validateRepeatPassword(_ password: String, _ repeatPassword: String) -> Bool {
        
        // Validate repeat password code
        return password == repeatPassword
        
    }
    
    func validateAllFields(username: String, email: String, firstName: String, lastName: String, password: String, repeatPassword: String) -> Bool {
        
        // Validate all fields code
        return validateUsername(username)
            && validateEmail(email)
            && validateFirstName(firstName)
            && validateLastName(lastName)
            && validatePassword(password)
            && validateRepeatPassword(password, repeatPassword)
    }


}
