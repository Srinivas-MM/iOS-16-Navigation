//
//  DetailView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import SwiftUI

struct DetailView: View {
  @Binding var path: NavigationPath
  let text: String
  
  var body: some View {
    VStack {
      Text("Detail View")
      Text(text)
      Divider()
      NavigationLink("Link to 3", value: 3)
      NavigationLink("Link to 3", value: "CCCC")
    }
    .navigationTitle(text)
    .navigationBarBackButtonHidden()
    .toolbar {
      ToolbarItem(placement: .navigationBarLeading) {
        Button {
          path.removeLast()
        } label: {
          Image(systemName: "chevron.left")
        }
      }
    }
  }
}

#Preview {
  NavigationStack {
    DetailView(path: .constant(NavigationPath()), text: "CCCC")
  }
}
