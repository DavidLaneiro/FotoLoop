//
//  FLErrors.swift
//  FotoLoop
//
//  Created by David Lourenço on 23/10/2024.
//

import Foundation

enum FLErrors: Error, LocalizedError {

    case signUpError(message: String)

    var errorDescription: String? {
        switch self {
        case .signUpError(let message):
            return "Sign up error -> \(message)"
        }
    }

}
