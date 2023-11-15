//
//  MovieDetailView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 13/11/23.
//

import SwiftUI

struct MovieDetailView: View {
  let movie: Movie
    var body: some View {
      VStack {
        Text("Movie Details")
          .bold()
      }
      .navigationTitle(movie.title)
      .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
  MovieDetailView(movie: Movie(title: "Avatar"))
}
