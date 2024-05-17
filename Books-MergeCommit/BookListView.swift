//
//  BookListView.swift
//  Books-MergeCommit
//
//  Created by João Bruno Rodrigues on 17/05/24.
//

import SwiftData
import SwiftUI

struct BookListView: View {
    
    @Environment(\.modelContext) private var context
    @Query(sort: \Book.title) private var books: [Book]
    
    var body: some View {
        NavigationStack{
            Group{
                if !books.isEmpty {
                    List{
                        ForEach(books) { book in
                            HStack(spacing: 16) {
                                VStack(alignment: .leading) {
                                    Text(book.title)
                                        .font(.title)
                                    HStack(spacing: 8) {
                                        Text(book.author)
                                            .foregroundStyle(.secondary)
                                        Text(book.publisher)
                                            .foregroundStyle(.secondary)
                                    }
                                }
                            }
                        }
                    }
                }
                else {
                    ContentUnavailableView("Enter your first book.", systemImage: "book.fill")
                }
            }
            .listStyle(.plain)
            .navigationTitle("My books")
        }
    }
}
    
    
#Preview {
    BookListView()
        .modelContainer(for: Book.self, inMemory: true)
}
