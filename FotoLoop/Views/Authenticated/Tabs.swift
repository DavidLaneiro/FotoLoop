//
//  Tabs.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

struct Tabs: View {

    var body: some View {

        TabView {
            Feed().tabItem {
                Image(systemName: UIConstants.Tabs.feedIcon)
                Text(UIConstants.Tabs.feedTitle)
                    .accessibilityIdentifier("FeedTab")

            }

            Profile().tabItem {
                Image(systemName: UIConstants.Tabs.profileIcon)
                Text(UIConstants.Tabs.profileTitle).accessibilityIdentifier("ProfileTab")

            }

        }
        .tint(Colors.sandyBrownOrange300)
        .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    Tabs()
}
