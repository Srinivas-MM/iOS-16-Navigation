//
//  SongDetailView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 12/11/23.
//

import SwiftUI

struct SongDetailView: View {
  let song: Song
  @EnvironmentObject var modelData: ModelDataManager
  @EnvironmentObject var navigationStateManagaer: NavigationStateManager
  
  var body: some View {
    VStack {
      Text("Song Details")
      Text(song.artist)
        .bold()
      Text("\(song.year)")
      Divider()
      VStack(alignment: .leading, content: {
        Text("People also liked") 
        ForEach(modelData.songs) { song in
          NavigationLink(value: SelectionState.song(song)) {
            Label(song.title, systemImage: "music.note")
          }
        }
      })
      Button {
        navigationStateManagaer.popToRoot()
      } label: {
        Text("Go to root")
      }
    }
    .navigationTitle(song.title)
    .navigationBarTitleDisplayMode(.inline)
    .toolbar {
      ToolbarItem(placement: .topBarTrailing) {
        Button {
          navigationStateManagaer.goToSettings()
        } label: {
          Image(systemName: "gear")
        }
      }
    }
  }
}

#Preview {
  SongDetailView(song: Song(title: "Smells like teen", artist: "Nirvana", year: 1991))
    .environmentObject(ModelDataManager())
    .environmentObject(NavigationStateManager())
}
