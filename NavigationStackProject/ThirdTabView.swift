//
//  ThirdTabView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import SwiftUI

struct ThirdTabView: View {
  @StateObject var modelDataManager = ModelDataManager()
  @StateObject var navigationStateManager = NavigationStateManager()
  @SceneStorage("navigationState") var navigationStateData: Data?
  
    var body: some View {
      NavigationStack(path: $navigationStateManager.selectionPath) {
        RootView(modelData: modelDataManager )
          .navigationDestination(for: SelectionState.self) { state in
            switch state {
            case .song(let song):
              SongDetailView(song: song)
            case .book(let book):
              BookDetailView(book: book)
            case .movie(let movie):
              MovieDetailView(movie: movie)
            case .settings:
              SettingsView()
            }
          }
      }
      .environmentObject(modelDataManager)
      .environmentObject(navigationStateManager)
    }
}

#Preview {
    ThirdTabView()
}
