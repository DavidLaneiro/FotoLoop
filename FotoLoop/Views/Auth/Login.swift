//
//  Login.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

struct Login: View {
    var body: some View {
        ZStack {
            LinearGradient(colors:
                            [Colors.sandyBrownOrange300, Colors.sandyBrownOrange500],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            VStack {
                FLLogo()
                FLoginForm()
                FLSimpleButton(buttonText: "Forgot Password?").foregroundStyle(Colors.spaceGray500)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 30))
            }

        }
    }
}

#Preview {
    Login()
}
