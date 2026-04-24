//
//  HomeView.swift
//  movie_app
//
//  Created by Fazliddin Ibragimov on 24/04/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: Constants.testTitleUrl))
        }
    }
}

#Preview {
    HomeView()
}
