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
    var action: () -> Void

    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(buttonText)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Colors.spaceGray500)
                .containerShape(RoundedRectangle(cornerRadius: 20))
                .padding(30)                        .lightShadow()
        })
    }

}

#Preview{
    FLButton(buttonText: "Login", action: {
        print("Button pressed.")
    })
}
