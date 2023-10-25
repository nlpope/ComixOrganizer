//
//  PublisherSelectView.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/24/23.
//

import SwiftUI
import RealmSwift

struct PublisherSelectView: View {
    @ObservedResults(Publisher.self) var publishers
    var body: some View {
        NavigationView {
            VStack {
                List() {
                    ForEach(publishers) { publisher in
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
