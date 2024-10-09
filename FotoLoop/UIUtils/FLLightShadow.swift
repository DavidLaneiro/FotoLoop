//
//  FLLightShadow.swift
//  FotoLoop
//
//  Created by David Lourenço on 08/10/2024.
//

import Foundation
import SwiftUI

// Apply a small shadow to the view
extension View {
    func lightShadow() -> some View {
        self.shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }

}
