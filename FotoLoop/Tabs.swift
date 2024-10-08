//
//  Tabs.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

struct Tabs: View {

    let feedIconSystemName = UIConstants.feedIconSystemName
    let feedTitleSystemName = UIConstants.feedTitleSystemName
    let profileIconSystemName = UIConstants.profileIconSystemName
    let profileTitleSystemName = UIConstants.profileTitleSystemName

    var body: some View {

        TabView {
            Feed().tabItem {
                Image(systemName: feedIconSystemName)
                Text(feedTitleSystemName)
                    .accessibilityIdentifier("FeedTab")

            }

            Profile().tabItem {
                Image(systemName: profileIconSystemName)
                Text(profileTitleSystemName).accessibilityIdentifier("ProfileTab")

            }

        }
        .tint(Colors.sandyBrownOrange300)

    }
}

#Preview {
    Tabs()
}
