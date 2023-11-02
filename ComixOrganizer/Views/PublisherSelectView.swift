//
//  PublisherSelectView.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/24/23.
//

import SwiftUI
import RealmSwift

struct PublisherSelectView: View {
    //static var array: [CountryInfo]
    @ObservedResults(Publisher.self) var publishers//how to make this an array n stick json in it
    @State private var searchFilter = ""
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Text("DC")
                    Text("Image")
                    Text("Milestone")
                    Text("Marvel")
                    
//                    ForEach(publishers.sorted(byKeyPath: "name")) { publisher in
//                        NavigationLink {
//                            ComicsListView(publisher: publisher)
//                        }  label: {
//                            Text("link to all \(publisher) comics")
//                        }
//                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Select a Publisher")
        }
    }
}

#Preview {
    PublisherSelectView()
}
