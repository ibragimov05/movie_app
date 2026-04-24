//
//  ContentView.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 24/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab(Constants.homeString, systemImage: "house") {
                Text(Constants.homeString)
            }

            Tab(Constants.upcomingString, systemImage: "play.circle") {
                Text(Constants.upcomingString)
            }

            Tab(Constants.searchString, systemImage: "magnifyingglass") {
                Text(Constants.searchString)
            }

            Tab(Constants.downlaodString, systemImage: "arrow.down.to.line") {
                Text(Constants.downlaodString)
            }

        }
    }
}

#Preview {
    ContentView()
}
