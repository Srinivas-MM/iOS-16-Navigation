//
//  FirstTabView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import SwiftUI

struct FirstTabView: View {
  @State private var path = NavigationPath()
  
  var body: some View {
    NavigationStack(path: $path) {
      VStack {
        List {
          NavigationLink("Go to A", value: "Show AAAA")
          Button {
            path.append("New Screen")
          } label: {
            Text("Append new element to path")
          }
        }
        VStack{
          Text("Path")
          Text("Number of details views on the stack: \(path.count)")
          Button{
            path.removeLast()
          } label: {
            Text("Go back one view")
          }
          Button {
            path = NavigationPath()
          } label: {
            Text("Go to root view")
          }
        }
      }
      
      .navigationDestination(for: String.self) { textValue in
        DetailView(path: $path, text: textValue)
      }
      .navigationTitle("Root View")
    }
  }
}

#Preview {
  FirstTabView()
}
