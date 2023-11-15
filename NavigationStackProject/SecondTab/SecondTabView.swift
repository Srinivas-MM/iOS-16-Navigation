//
//  SecondTabView.swift
//  NavigationStackProject
//
//  Created by Srinivas Prayag Sahu on 11/11/23.
//

import SwiftUI

struct SecondTabView: View {
  let books = Book.examples()
  @State private var selectedBookPath = [Book]()
  
  var body: some View {
    NavigationStack(path: $selectedBookPath) {
      List {
        ForEach(books) { book in
          NavigationLink(book.title, value: book)
        }
      }
      .navigationDestination(for: Book.self) { book in
        BookDestinationView(book: book)
      }
      .navigationTitle("Bookself")
    }
  }
}

#Preview {
  SecondTabView()
}
