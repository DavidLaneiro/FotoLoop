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
        let regex = "^[A-Za-z0-9][A-Za-z0-9._]{4,13}[A-Za-z0-9]$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)

        return predicate.evaluate(with: username)
    }

    func validateEmail(_ email: String) -> Bool {

        // Validate email code
        let emailRegex = "^(?![.-])[A-Z0-9a-z._%+-]{1,63}(?<![.-])@[A-Za-z0-9]+([-.][A-Za-z0-9]+)*\\.[A-Za-z]{2,}$"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)

    }

    func validateFirstName(_ firstName: String) -> Bool {

        // Validate first name code
        let regex = "^[A-Za-z]{4,12}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)

        return predicate.evaluate(with: firstName)

    }

    func validateLastName(_ lastName: String) -> Bool {

        // Validate last name code

        let regex = "^[A-Za-z]{5,15}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)

        return predicate.evaluate(with: lastName)
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

    func validateAllFields(
        registerForm: RegisterForm)
    -> Bool {

        // Validate all fields code
        return validateUsername(registerForm.username)
        && validateEmail(registerForm.email)
        && validateFirstName(registerForm.firstName)
        && validateLastName(registerForm.lastName)
        && validatePassword(registerForm.password)
        && validateRepeatPassword(registerForm.password, registerForm.repeatPassword)
    }

}
