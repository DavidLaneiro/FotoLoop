//
//  FotoLoopApp.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

@main
struct FotoLoopApp: App {

    @StateObject private var navViewModel = NavigationViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navViewModel.navigationPath) {
                // Start on login page for now
                MainNavigation()
            }.environmentObject(navViewModel)
        }
    }

    #Preview {
        Login()
    }
}
