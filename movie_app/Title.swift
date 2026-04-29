//
//  Title.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 27/04/26.
//

import Foundation

struct APIOject: Decodable {
    var results: [Title] = []
}

struct Title: Decodable, Identifiable {
    var id: Int?
    var title: String?
    var name: String?
    var overview: String?
    var posterPath: String?
}
