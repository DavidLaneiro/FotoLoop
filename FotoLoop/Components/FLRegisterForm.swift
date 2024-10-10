//
//  FLRegisterForm.swift
//  FotoLoop
//
//  Created by David Lourenço on 10/10/2024.
//

import SwiftUI

struct FLRegisterForm: View {
    var body: some View {
        VStack(spacing: 0) {
            FLTextField(placeholder: RegisterConstants.Register.username)
                .accessibilityIdentifier("UsernameTF")
            FLTextField(placeholder: RegisterConstants.Register.email)
                .accessibilityIdentifier("RegisterEmailTF")
            FLTextField(placeholder: RegisterConstants.Register.password)
                .accessibilityIdentifier("RegisterPasswordTF")
            FLTextField(placeholder: RegisterConstants.Register.repeatPassword)
                .accessibilityIdentifier("RepeatPasswordTF")
        }

    }
}

#Preview {
    FLRegisterForm()
}
