//
//  RegisterViewModel.swift
//  FotoLoop
//
//  Created by David Lourenço on 21/10/2024.
//

import Foundation

class RegisterViewModel: ObservableObject {

    // Variables
    var form: RegisterForm
    var formValidator: RegisterFormValidatorProtocol
    var registerService: RegisterServiceProtocol
        
    // Init with a form validator
    init(form: RegisterForm, formValidator: RegisterFormValidatorProtocol, registerService: RegisterServiceProtocol) {
        self.form = form
        self.formValidator = formValidator
        self.registerService = registerService
    }
    
    // Functions
    func register() async throws {
        // Validate form and catch success or error
        let formIsValid = formValidator.validateAllFields(registerForm: form)
        
        if formIsValid{
            do{
                let _ = try await registerService.registerUser(form)
            }catch(let error as FLErrors){
                throw error
            }catch{
                throw FLErrors.signUpError(message: error.localizedDescription)
            }
        }
        
    }
    
}
