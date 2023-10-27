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
    var body: some View {
        NavigationView {
            VStack {
                List {
                    //start here
                    ForEach(publishers.sorted(byKeyPath: "name")) { publisher in
                        Text(publisher.name)
                    }
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
