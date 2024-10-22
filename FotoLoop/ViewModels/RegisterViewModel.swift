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

    // Init with a form validator
    init(formValidator: FormValidatorProtocol) {
        self.formValidator = formValidator
    }

    // Functions
    func register() {

        // Validate form and catch success or error

    }

}
