//
//  ModelDataManager.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import Foundation

class ModelDataManager: ObservableObject {
  @Published var books = Book.examples()
  @Published var songs = Song.examples()
  @Published var movies = Movie.examples()
}
