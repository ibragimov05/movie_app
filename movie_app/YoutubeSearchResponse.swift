//
//  YoutubeSearchResponse.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 30/04/26.
//

import Foundation

struct YoutubeSearchResponse: Codable {
    let items: [ItemProperties]?
}

struct ItemProperties: Codable {
    let id: IdProperties?
}

struct IdProperties: Codable {
    let videoId: String?

}
