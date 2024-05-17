//
//  Books_MergeCommitApp.swift
//  Books-MergeCommit
//
//  Created by João Bruno Rodrigues on 16/05/24.
//

import SwiftUI
import SwiftData

@main
struct Books_RebaseAndMergeApp: App {
    
    var body: some Scene {
        WindowGroup {
            BookListView()
        }
        .modelContainer(for: Book.self)
    }
}
