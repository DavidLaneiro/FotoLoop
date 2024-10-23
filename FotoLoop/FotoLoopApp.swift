//
//  FotoLoopApp.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI
import FirebaseCore

@main
struct FotoLoopApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
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
