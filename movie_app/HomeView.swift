//
//  HomeView.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 24/04/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVStack {
                    AsyncImage(url: URL(string: Constants.testTitleURL)) {
                        image in
                        image
                            .resizable()
                            .scaledToFit()
                            .overlay {
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(
                                            color: .clear,
                                            location: 0.8
                                        ),
                                        
                                        Gradient.Stop(
                                            color: .gradient,
                                            location: 1
                                        ),
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            }
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(
                        width: geo.size.width,
                        height: geo.size.height * 0.85
                    )

                    HStack {
                        Button {

                        } label: {
                            Text(Constants.playString)
                                .ghostButton()
                        }

                        Button {

                        } label: {
                            Text(Constants.downloadString).ghostButton()
                        }
                    }

                    HorizontalListView(header: Constants.trendingMovieString)
                    HorizontalListView(header: Constants.trendingTVString)
                    HorizontalListView(header: Constants.topRatedMovieString)
                    HorizontalListView(header: Constants.topRatedTVString)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
