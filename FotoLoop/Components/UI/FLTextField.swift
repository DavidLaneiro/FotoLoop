//
//  FLTextField.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

struct FLTextField : View{
    
    // Just while viewModel is not created
    @State private var text : String = ""
    var placeholder : String
    var iconSystemName : String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(FLTextFieldStyle())
            .padding(20)
            .background(LinearGradient(colors: [Colors.sandyBrownOrange300, Colors.sandyBrownOrange500], startPoint: .topLeading, endPoint: .bottomTrailing))
            .textInputAutocapitalization(.words)
    }
    

}


#Preview {
    FLTextField(placeholder: "Insert placeholder here", iconSystemName: "magnifyingglass")
}
