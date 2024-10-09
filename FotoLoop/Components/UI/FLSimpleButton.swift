//
//  FLSimpleButton.swift
//  FotoLoop
//
//  Created by David Lourenço on 08/10/2024.
//

import Foundation
import SwiftUI

struct FLSimpleButton: View {

    var buttonText: AttributedString

    var body: some View {
        Button(action: {
            print("Button pressed!")
        }, label: {
            Text(buttonText)
        }).foregroundStyle(Colors.spaceGray500)

    }

}

#Preview {
    FLSimpleButton(buttonText: "Forgot password?")
}
