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
                Text("All Comics")
                    .font(.title3).bold()
                    .padding()
                    .frame(width: .infinity, alignment: .leading)
                List {
                    ForEach(publisher.comics) { comic in
                        Text(comic.title)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
            .navigationTitle("\(publisher) Titles")
        }
    }
}

struct ComicListView_Previews: PreviewProvider {
    static var previews: some View {
        ComicsListView(publisher: Publisher(value: "Marvel"))
    }
}
