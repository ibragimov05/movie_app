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

    static var previewTitles = [
        Title(
            id: 1,
            title: "Spider-man",
            name: "Spider-man",
            overview: "Brand new day",
            posterPath: Constants.testTitleURL
        ),
        Title(
            id: 2,
            title: "Avengers: Doomsday",
            name: "Avengers: Doomsday",
            overview: "A movie about Avengars",
            posterPath: Constants.testTitleURL2
        ),
        Title(
            id: 3,
            title: "The Dark Knight",
            name: "The Dark Knight",
            overview: "A movie about the Dark Knight",
            posterPath: Constants.testTitleURL3
        ),
    ]
}
