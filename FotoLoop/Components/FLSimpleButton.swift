//
//  FLSimpleButton.swift
//  FotoLoop
//
//  Created by David Lourenço on 08/10/2024.
//

import Foundation
import SwiftUI

struct FLSimpleButton: View {

    var buttonText: String

    var body: some View {
        Button(action: {
            print("Button pressed!")
        }, label: {
            Text(buttonText)
        }).foregroundStyle(Colors.spaceGray500)
            .accessibilityIdentifier("SimpleButton")
    }

}

#Preview {
    FLSimpleButton(buttonText: "Forgot password?")
}
