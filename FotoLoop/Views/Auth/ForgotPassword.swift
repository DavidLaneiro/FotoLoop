//
//  ForgotPassword.swift
//  FotoLoop
//
//  Created by David Lourenço on 14/10/2024.
//

import SwiftUI

struct ForgotPassword: View {

    @EnvironmentObject private var navViewModel: NavigationViewModel

    var body: some View {
        ZStack {
            LinearGradient(colors:
                            [Colors.sandyBrownOrange300, Colors.sandyBrownOrange500],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {

                    Text("Forgot your password?").font(.title)
                        .foregroundStyle(Colors.spaceGray500)

                    Text(
                            "Please enter the email address you'd like your password reset information sent to"
                    ).foregroundStyle(Colors.white)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))

                    FLTextField(placeholder: "Enter email address")
                    FLButton(buttonText: "Request reset link", action: {})
                    FLSimpleButton(buttonText: "Back to login", action: {
                        navViewModel.goBack()
                    })
                }.padding(EdgeInsets(top: 40, leading: 0, bottom: 20, trailing: 0))
            }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {

    let navViewModel = NavigationViewModel()

    navViewModel.goToLogin()
    navViewModel.goToForgotPassword()

    return ForgotPassword().environmentObject(navViewModel)
}
