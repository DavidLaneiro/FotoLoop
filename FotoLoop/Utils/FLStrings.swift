//
//  FLStrings.swift
//  FotoLoop
//
//  Created by David Lourenço on 09/10/2024.
//

import Foundation

struct FLStrings {

    // It takes a regular string, a start index and an end index
    // Returns an attributed string within that range
    static func createAttributedString(stringToTransform: String, substringToStyle: String) -> AttributedString {
        var attributedText = AttributedString(stringToTransform)

        if let range = attributedText.range(of: substringToStyle) {

            attributedText[range].foregroundColor = Colors.white
        }

        return attributedText
    }

}
