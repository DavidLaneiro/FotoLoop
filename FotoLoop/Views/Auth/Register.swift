//
//  Register.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

struct Register: View {

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
                    FLRegisterForm()

                    FLButton(buttonText: RegisterConstants.Register.signUp, action: {
                        navViewModel.goToTabs()
                    }).accessibilityIdentifier("RegisterButton")

                    FLSimpleButton(buttonText:
                                    FLStrings
                        .createAttributedString(stringToTransform: RegisterConstants.Register.alreadyHaveAccount,
                                                substringToStyle: "Login"), action: {
                        navViewModel.goBack()
                    })
                    .accessibilityIdentifier("BackToLoginButton")

                }.padding(EdgeInsets(top: 40, leading: 0, bottom: 20, trailing: 0))

            }

        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    let navViewModel = NavigationViewModel()

    navViewModel.goToLogin()
    navViewModel.goToRegister()

    return Register().environmentObject(navViewModel)
}
