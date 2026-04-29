//
//  Constants.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 24/04/26.
//

import Foundation
import SwiftUI

struct Constants {
    static let homeString = "Home"
    static let upcomingString = "Upcoming"
    static let searchString = "Search"
    static let downloadString = "Download"
    static let playString = "Play"
    static let trendingMovieString = "Trending Movies"
    static let trendingTVString = "Trending TV"
    static let topRatedMovieString = "Top Rated Movies"
    static let topRatedTVString = "Top Rated TV"
    static let movieSearchString = "Movie Search"
    static let tvSearchString = "TV Search"
    static let moviePlaceHolderString = "Search for a Movie"
    static let tvPlaceHolderString = "Search for a TV Show"

    static let homeIconString = "house"
    static let upcomingIconString = "play.circle"
    static let searchIconString = "magnifyingglass"
    static let downloadIconString = "arrow.down.to.line"
    static let tvIconString = "tv"
    static let movieIconString = "movieclapper"

    static let testTitleURL =
        "https://m.media-amazon.com/images/I/91h+D8QUxsL._UF1000,1000_QL80_.jpg"
    static let testTitleURL2 =
        "https://m.media-amazon.com/images/M/MV5BM2E1ZTJiZTgtZGI2Zi00MzAxLThhZjktMmU3M2E3Yzk3NjUxXkEyXkFqcGc@._V1_QL75_UX380_CR0,0,380,562_.jpg"
    static let testTitleURL3 =
        "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg"

    static let posterURLStart = "https://image.tmdb.org/t/p/w500"

    static func addPosterPath(to titles: inout [Title]) {
        for index in titles.indices {
            if let path = titles[index].posterPath {
                titles[index].posterPath = Constants.posterURLStart + path
            }
        }
    }
}

extension Text {
    func ghostButton() -> some View {
        self
            .frame(
                width: 100,
                height: 50
            )
            .foregroundStyle(
                .buttonText
            )
            .bold()
            .background {
                RoundedRectangle(
                    cornerRadius: 20,
                    style: .continuous
                )
                .stroke(
                    .buttonBorder,
                    lineWidth: 5
                )
            }
    }
}
