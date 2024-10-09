//
//  NavigationViewModel.swift
//  FotoLoop
//
//  Created by David Lourenço on 09/10/2024.
//

import Foundation

class NavigationViewModel: ObservableObject {
    @Published var navigationState: NavigationState?

    // MARK: Navigation Functions

    // Auth:
    func navigateToLogin() {
        navigationState = .login
    }

    func navigateToRegister() {
        navigationState = .register
    }

    // Authenticated
    func navigateToFeed() {
        navigationState = .feed
    }

    func navigateToEditProfile() {
        navigationState = .editProfile
    }

    func navigateToProfile() {
        navigationState = .profile
    }

    func navigateToCreatePost() {
        navigationState = .createPost
    }

}
