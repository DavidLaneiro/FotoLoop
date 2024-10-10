//
//  MainNavigation.swift
//  FotoLoop
//
//  Created by David Lourenço on 10/10/2024.
//

import SwiftUI

struct MainNavigation: View {

    @EnvironmentObject private var navViewModel: NavigationViewModel

    var body: some View {
        VStack {

            if !navViewModel.isAuthenticated {
               Login()
            } else {
                Tabs()
            }

        }.navigationDestination(for: NavigationStates.self) { navigation in
            switch navigation {

            case .forgotPassword:
                Text("")

            case .login:
                Login()

            case .register:
                Register()

            case .tabs:
                Tabs()
            }

        }
    }
}

#Preview {
    MainNavigation().environmentObject(NavigationViewModel())
}
