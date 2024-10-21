//
//  Post.swift
//  FotoLoop
//
//  Created by David Lourenço on 21/10/2024.
//

import Foundation

struct Post: Codable, Identifiable {

    var id: String
    var author: User
    var content: String
    var imageURL: URL?
    var likeCount: Int
    var createdAt: Date
}
