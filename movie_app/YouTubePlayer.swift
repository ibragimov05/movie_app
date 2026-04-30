//
//  YouTubePlayer.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 30/04/26.
//

import SwiftUI
import WebKit

struct YouTubePlayer: UIViewRepresentable {
    let webView = WKWebView()
    let videoId: String
    let youtubeBaseURL = APIConfig.shared?.youtubeBaseURL

    func makeUIView(context: Context) -> some UIView {
        webView
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let baseURLString = youtubeBaseURL,
            let baseURL = URL(string: baseURLString)
        else {
            return
        }
        
        let fullURL = baseURL.appending(path: "watch").appending(queryItems: [
            URLQueryItem(name: "v", value: videoId)
        ])
        webView.load(
            URLRequest(
                url: fullURL
            )
        )
    }
}
