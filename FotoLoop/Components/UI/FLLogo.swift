//
//  FLLogo.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

struct FLLogo: View {

    // Does not change
    let logoColor = UIConstants.logoColor
    let logoIcon = UIConstants.logoIcon
    let logoTitle = UIConstants.logoTitle

    var body: some View {
        HStack {

            Image(systemName: logoIcon).resizable().frame(width: 60, height: 50)
                .foregroundStyle(logoColor)
                .accessibilityIdentifier("LogoImage")
                .lightShadow()

            Text(logoTitle)
                .bold().font(.title).font(.title2)
                .foregroundStyle(logoColor)
                .accessibilityIdentifier("LogoText")
                .lightShadow()

        }.background(LinearGradient(
            colors: [Colors.sandyBrownOrange300, Colors.sandyBrownOrange500],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)

        )
    }
}

#Preview {
    FLLogo()
}
