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
            Tab("Home", systemImage: "house") {
                Text("Home")
            }

            Tab("Upcoming", systemImage: "play.circle") {
                Text("Upcoming")
            }

            Tab("Search", systemImage: "magnifyingglass") {
                Text("Search")
            }

            Tab("Downloads", systemImage: "arrow.down.to.line") {
                Text("Download")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
