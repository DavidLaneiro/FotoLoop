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
            ScrollView {
                VStack {

                    FLLogo()
                    FLoginForm()

                    HStack {
                        Spacer()
                        FLSimpleButton(buttonText: UIConstants.Login.forgotPassword)
                            .foregroundStyle(Colors.spaceGray500)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 30))
                    }

                    FLButton(buttonText: UIConstants.Login.login)
                }.padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
            }

        }
    }
}

#Preview {
    Login()
}
