//
//  FotoLoopApp.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

@main
struct FotoLoopApp: App {

    @StateObject private var viewModel = NavigationViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                Navigation().environmentObject(viewModel)
            }
        }
    }
}

#Preview {
    Login()
}
