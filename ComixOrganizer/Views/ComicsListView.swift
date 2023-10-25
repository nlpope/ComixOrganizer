//
//  ContentView.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/18/23.
//

import SwiftUI
import RealmSwift

struct ComicsListView: View {
    @ObservedRealmObject var publisher: Publisher
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(comics) { comic in
                        Text(comic.title)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
            .navigationTitle("Titles")
        }
    }
}

struct ComicListView_Previews: PreviewProvider {
    static var previews: some View {
        ComicsListView(publisher: Publisher(name: "Marvel"))
    }
}
