//
//  Navigation.swift
//  FotoLoop
//
//  Created by David Lourenço on 09/10/2024.
//

import Foundation
import SwiftUI

struct Navigation: View {
    // Struct to manage navigation
    @EnvironmentObject var navigationVM: NavigationViewModel

    var body: some View {
        VStack {
            switch navigationVM.navigationState {
            case .login:
                Login()
            case .feed:
                Tabs()
            case .none:
                Login()
            }

        }.navigationDestination(for: NavigationState.self) { destination in

            switch destination {
            case .login:
                Login()

            case .feed:
                Tabs()
            }

        }
    }

}
