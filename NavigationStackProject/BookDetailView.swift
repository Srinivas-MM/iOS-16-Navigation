//
//  BookDetailView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 13/11/23.
//

import SwiftUI

struct BookDetailView: View {
  let book: Book
    var body: some View {
      VStack {
        Text("Book Detail View")
        Divider()
        NavigationLink("Suggestion 1", value: SelectionState.book(Book(title: "Death on the nile")))
      }
      .navigationTitle(book.title)
      .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
  BookDetailView(book: Book(title: "Death on the nile"))
}
