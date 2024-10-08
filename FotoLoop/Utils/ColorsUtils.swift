//
//  ColorsUtils.swift
//  FotoLoop
//
//  Created by David Lourenço on 04/10/2024.
//

import Foundation
import SwiftUI

extension Color {

    // Create colors with hex
    init(hex: String) {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&int)

            let red, green, blue, alpha: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (red, green, blue, alpha) = ((int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17, 255)
            case 6: // RGB (24-bit)
                (red, green, blue, alpha) = (int >> 16, int >> 8 & 0xFF, int & 0xFF, 255)
            case 8: // ARGB (32-bit)
                (red, green, blue, alpha) = (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF, int >> 24 & 0xFF)
            default:
                (red, green, blue, alpha) = (1, 1, 1, 1) // Default to white if invalid hex
            }

            self.init(
                .sRGB,
                red: Double(red) / 255,
                green: Double(green) / 255,
                blue: Double(blue) / 255,
                opacity: Double(alpha) / 255
            )
        }

}
