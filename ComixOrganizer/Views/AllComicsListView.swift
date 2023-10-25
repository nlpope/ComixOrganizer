//
//  AllComicsListView.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/25/23.
//

import SwiftUI
import RealmSwift

struct AllComicsListView: View {
    @ObservedResults(Comic.self, sortDescriptor: SortDescriptor(keyPath: "title")) var comics
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AllComicsListView()
}
