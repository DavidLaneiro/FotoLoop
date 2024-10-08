//
//  FLLoginForm.swift
//  FotoLoop
//
//  Created by David Lourenço on 08/10/2024.
//

import Foundation
import SwiftUI

struct FLoginForm: View {

    var body: some View {
        VStack(spacing: 0) {
            FLTextField(placeholder: "Email")
            FLTextField(placeholder: "Password")
        }
    }
}

#Preview {
    FLoginForm()
}
