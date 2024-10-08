//
//  Login.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

struct Login: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Colors.sandyBrownOrange300, Colors.sandyBrownOrange500], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
            FLLogo()
            
        }
    }
}

#Preview {
    Login()
}
