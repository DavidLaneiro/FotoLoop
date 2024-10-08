//
//  FLLogo.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

struct FLLogo: View {

    var body: some View {
        HStack {

            Image(systemName: UIConstants.Logo.logoIcon).resizable().frame(width: 60, height: 50)
                .foregroundStyle(UIConstants.Logo.logoColor)
                .accessibilityIdentifier("LogoImage")
                .lightShadow()

            Text(UIConstants.Logo.logoTitle)
                .bold().font(.title).font(.title2)
                .foregroundStyle(UIConstants.Logo.logoColor)
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
