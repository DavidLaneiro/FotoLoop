//
//  FLButton.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

struct FLButton: View {

    var buttonText: String

    var body: some View {
        Button(action: {
            print("Login user!")
        }, label: {
            Text(buttonText)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Colors.spaceGray500)
                .containerShape(RoundedRectangle(cornerRadius: 20))
                .padding(30)                        .lightShadow()
        }).accessibilityIdentifier("FilledButton")
    }

}

#Preview{
    FLButton(buttonText: "Login")
}
