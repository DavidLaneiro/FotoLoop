//
//  NavigationViewModel.swift
//  FotoLoop
//
//  Created by David Lourenço on 09/10/2024.
//

import Foundation

class NavigationViewModel: ObservableObject {

    // Add complex logic later
    @Published var navigationState: NavigationState?
    @Published var isAuthenticated: Bool = false

    init() {
        // It depends on auth
        if isAuthenticated {
            self.navigationState = .feed
        } else {
            self.navigationState = .login
        }
    }

    // MARK: Navigation Functions

    // Auth:
    func navigateToLogin() {
        navigationState = .login
    }

    // Authenticated
    func navigateToFeed() {
        navigationState = .feed
    }

}
