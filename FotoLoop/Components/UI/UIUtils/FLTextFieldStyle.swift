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
            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 12))
            .background(Colors.white)
            .cornerRadius(20)
            .shadow(color: Colors.black.opacity(0.2), radius: 8, x: 0, y: 5) 
            .foregroundStyle(Colors.spaceGray500)
    }
}
