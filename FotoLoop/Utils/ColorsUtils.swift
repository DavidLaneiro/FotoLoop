//
//  ColorsUtils.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

extension Color{
    
    // Create colors with hex
    init(hex: String) {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&int)
            
            let r, g, b, a: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (r, g, b, a) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17, 255)
            case 6: // RGB (24-bit)
                (r, g, b, a) = (int >> 16, int >> 8 & 0xFF, int & 0xFF, 255)
            case 8: // ARGB (32-bit)
                (r, g, b, a) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF, int >> 24 & 0xFF)
            default:
                (r, g, b, a) = (1, 1, 1, 1) // Default to white if invalid hex
            }
            
            self.init(
                .sRGB,
                red: Double(r) / 255,
                green: Double(g) / 255,
                blue: Double(b) / 255,
                opacity: Double(a) / 255
            )
        }
    
}
