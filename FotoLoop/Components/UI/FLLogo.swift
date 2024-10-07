//
//  FLLogo.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

struct FLLogo: View {
    
    // It has to remain White
    let logoColor : Color = Colors.white
    
    var body: some View {
        HStack{
            Image(systemName: "photo.on.rectangle.angled").resizable().frame(width: 60, height: 50)
                .foregroundStyle(logoColor)
            Text("FotoLoop")
                .bold().font(.title).font(.title2)
                .foregroundStyle(logoColor)
        }.background(LinearGradient(colors: [Colors.sandyBrownOrange300, Colors.sandyBrownOrange500], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}


#Preview {
    FLLogo()
}

