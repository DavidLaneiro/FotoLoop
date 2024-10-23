//
//  RegisterViewModel.swift
//  FotoLoop
//
//  Created by David Lourenço on 21/10/2024.
//

import Foundation

class RegisterViewModel: ObservableObject {

    // Variables
    var formValidator: FormValidatorProtocol
    var registerService: RegisterServiceProtocol

    // Init with a form validator
    init(formValidator: FormValidatorProtocol, registerService: RegisterServiceProtocol) {
        self.formValidator = formValidator
        self.registerService = registerService
    }

    // Functions
    func register() {
        // Validate form and catch success or error

    }

}
