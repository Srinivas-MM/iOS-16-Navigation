//
//  ContentView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      TabView {
        FirstTabView()
          .tabItem { Label("First", systemImage: "plus") }
        SecondTabView()
          .tabItem { Label("Second", systemImage: "face.smiling") }
        ThirdTabView()
          .tabItem { Label("Third", systemImage: "doc.richtext") }
      }
    }
}

#Preview {
    ContentView()
}
