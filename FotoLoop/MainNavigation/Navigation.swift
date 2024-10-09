//
//  Navigation.swift
//  FotoLoop
//
//  Created by David Lourenço on 09/10/2024.
//

import Foundation
import SwiftUI

struct Navigation: View {

    @EnvironmentObject var navigationVM: NavigationViewModel

    var body: some View {
        VStack {
            switch navigationVM.navigationState {
            case .login:
                Login()
            case .register:
                Text("Go to register page!")
            case .feed:
                Feed()
            case .createPost:
                Text("Go to createPost page!")
            case .profile:
                Text("Go to profile page!")
            case .editProfile:
                Text("Go to edit profile page!")
            case .none:
                Login()
            }
        }
    }

}
