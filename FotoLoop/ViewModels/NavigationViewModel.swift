//
//  NavigationViewModel.swift
//  FotoLoop
//
//  Created by David Lourenço on 10/10/2024.
//

import Foundation

class NavigationViewModel: ObservableObject {

    // MARK: View model that manages app navigation

    @Published var navigationPath: [NavigationStates] = []

    // For now this serves as auth logic
    @Published var isAuthenticated: Bool = false

    func goToLogin() {

        navigationPath.append(.login)
    }

    func goToTabs() {
        navigationPath.append(.tabs)
    }

    func goToRegister() {
        navigationPath.append(.register)
    }

    func goToForgotPassword() {
        navigationPath.append(.forgotPassword)
    }

    func goBack() {
        navigationPath.removeLast()
    }

}
