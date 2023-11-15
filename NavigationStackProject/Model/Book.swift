//
//  Book.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import SwiftUI

struct Book: Identifiable, Hashable, Codable {
  var title: String
  var id: UUID
  
  init(title: String) {
    self.title = title
    self.id = UUID()
  }
  
  static func examples() -> [Book] {
    [.init(title: "Lord of the rings"),
     .init(title: "Game of thrones"),
     .init(title: "The shining")
    ]
  }
}
