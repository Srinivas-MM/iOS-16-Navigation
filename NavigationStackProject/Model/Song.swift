//
//  Song.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import Foundation

struct Song: Identifiable, Hashable, Codable {
  var title: String
  var artist: String
  var year: Int
  var id: UUID
  
  init(title: String, artist: String, year: Int) {
    self.title = title
    self.artist = artist
    self.year = year
    self.id = UUID()
  }
  
  static func examples() -> [Song] {
    [ .init(title: "Fight the power", artist: "Public Enimy", year: 1989),
      .init(title: "Like a rolling stone", artist: "Bob Dylane", year: 1965),
      .init(title: "Smells like teen spirit", artist: "Nirvana", year: 1991)
    ]
  }
}
