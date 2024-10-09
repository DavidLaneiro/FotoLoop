//
//  FLTextFieldStyle.swift
//  FotoLoop
//
//  Created by David Lourenço on 07/10/2024.
//

import Foundation
import SwiftUI

struct FLTextFieldStyle: TextFieldStyle {

    // swiftlint:disable:next identifier_name
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 12))
            .background(Colors.white)
            .cornerRadius(20)
            .lightShadow()
            .foregroundStyle(Colors.spaceGray500)
    }
}
