//
//  BookDestinationView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import SwiftUI

struct BookDestinationView: View {
  let book: Book
  var body: some View {
    VStack {
      Text("Book Detail View")
      Divider()
      NavigationLink("Suggestion 1", value: Book(title: "Suggestion 1"))
      NavigationLink("Suggestion 1", value: Book(title: "Suggestion 2"))
      NavigationLink("Suggestion 1", value: Book(title: "Suggestion 3"))
    }
  }
}

#Preview {
  BookDestinationView(book: Book(title: "Alice in wanderland"))
}
