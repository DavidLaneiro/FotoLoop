//
//  Tabs.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import SwiftUI

struct Tabs: View {
    
    var body: some View {
        
        TabView{
            Feed().tabItem {
                Image(systemName: "text.below.photo.fill.rtl")
                Text("Feed")
            }
            
            Profile().tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
            
        }
        .tint(Colors.sandyBrownOrange300)
        
    }
}

#Preview {
    Tabs()
}
