//
//  NavigationStateManager.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 13/11/23.
//

import Foundation
import Combine

enum SelectionState: Hashable, Codable {
  case movie(Movie)
  case song(Song)
  case book(Book)
  case settings
}

class NavigationStateManager: ObservableObject {
  @Published var selectionPath = [SelectionState]()
  
  var data: Data? {
    get  {
      try? JSONEncoder().encode(selectionPath)
    } set {
      guard let data = newValue,
            let path = try? JSONDecoder().decode([SelectionState].self, from: data)
      else { return }
      // Fetch updated new model data for each id
      selectionPath = path
    }
  }
  
  func popToRoot() {
    selectionPath = []
  }
  
  func goToSettings() {
    // If you want to push then append selectionstate.settings here
    // If you want an view as rootview then add that only path to the selection path array.
    selectionPath = [SelectionState.settings]
  }  
}
