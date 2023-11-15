//
//  Movie.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import Foundation

struct Movie: Identifiable, Hashable, Codable {
  var title: String
  var id: UUID
  
  init(title: String) {
    self.title = title
    self.id = UUID()
  }
  
  static func examples() -> [Movie] {
    [.init(title: "Titanic"),
     .init(title: "Avatar"),
     .init(title: "Lord of the ring")
    ]
  }
}
