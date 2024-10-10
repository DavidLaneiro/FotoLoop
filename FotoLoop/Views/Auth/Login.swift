//
//  Login.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

struct Login: View {

    @EnvironmentObject private var navViewModel: NavigationViewModel

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
                        FLSimpleButton(buttonText: FLStrings
                            .createAttributedString(stringToTransform: LoginConstants.Login.forgotPassword,
                                                    substringToStyle: ""), action: {})
                            .foregroundStyle(Colors.spaceGray500)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 30))
                            .accessibilityIdentifier("ForgotPasswordButton")
                    }

                    FLButton(buttonText: LoginConstants.Login.login, action: {
                        
                        navViewModel.goToTabs()
                    }).accessibilityIdentifier("LoginButton")
                    FLSimpleButton(buttonText:
                                    FLStrings
                        .createAttributedString(stringToTransform: LoginConstants.Login.signUp,
                                                substringToStyle: "Sign Up"), action: {})
                    .accessibilityIdentifier("SignUpButton")

                }.padding(EdgeInsets(top: 40, leading: 0, bottom: 20, trailing: 0))

            }

        }
    }
}

#Preview {
    Login().environmentObject(NavigationViewModel())
}
