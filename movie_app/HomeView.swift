//
//  HomeView.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 24/04/26.
//

import SwiftUI

struct HomeView: View {
    let viewModel = ViewModel()
    @State private var titleDetailPath = NavigationPath()

    var body: some View {
        NavigationStack(path: $titleDetailPath) {
            GeometryReader { geo in
                ScrollView {
                    switch viewModel.homeStatus {
                    case .notStarted:
                        EmptyView()
                    case .fetching:
                        ProgressView().frame(
                            width: geo.size.width,
                            height: geo.size.height
                        )
                    case .success:
                        LazyVStack {
                            AsyncImage(
                                url: URL(
                                    string: viewModel.heroTitle.posterPath ?? ""
                                )
                            ) {
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
                                    titleDetailPath.append(viewModel.heroTitle)
                                } label: {
                                    Text(Constants.playString)
                                        .ghostButton()
                                }

                                Button {

                                } label: {
                                    Text(Constants.downloadString).ghostButton()
                                }
                            }

                            HorizontalListView(
                                header: Constants.trendingMovieString,
                                titles: viewModel.trendingMovies
                            )
                            HorizontalListView(
                                header: Constants.trendingTVString,
                                titles: viewModel.trendingTV
                            )
                            HorizontalListView(
                                header: Constants.topRatedMovieString,
                                titles: viewModel.topRatedMovies
                            )
                            HorizontalListView(
                                header: Constants.topRatedTVString,
                                titles: viewModel.topRatedTV
                            )
                        }.navigationDestination(
                            for: Title.self,
                            destination: { title in
                                TitleDetailView(title: title)
                            }
                        )
                    case .failed(let error):
                        Text("Error: \(error.localizedDescription)")
                    }

                }.task {
                    await viewModel.getTitles()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
