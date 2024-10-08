//
//  FLTextField.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

struct FLTextField: View {

    // Just while viewModel is not created
    @State private var text: String = ""
    var placeholder: String

    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(FLTextFieldStyle())
            .padding(EdgeInsets(top: 10, leading: 30, bottom: 10, trailing: 30))
            .background(LinearGradient(
                colors: [Colors.sandyBrownOrange300, Colors.sandyBrownOrange500],
                startPoint: .topLeading, endPoint: .bottomTrailing))
            .textInputAutocapitalization(.words)
    }

}

#Preview {
    FLTextField(placeholder: "Insert placeholder here")
}
