//
//  FLTextFieldStyle.swift
//  FotoLoop
//
//  Created by David Lourenço on 07/10/2024.
//

import Foundation
import SwiftUI

struct FLTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(12)
            .background(Colors.white)
            .cornerRadius(20)
            .shadow(radius: 3)
            .foregroundStyle(Colors.spaceGray500)
    }
}
