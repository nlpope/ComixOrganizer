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
    @State private var searchFilter = ""
    //add array of 4 publishers here (dc, image, milestone, marvel)
//    private var publisherArray = [
    var body: some View {
        NavigationView {
            VStack {
                List {
                   //for each run an API call? where is [publisher]'s being created
                   //before getting dumped into the ForEach
                    
                    ForEach(publishers.sorted(byKeyPath: "name")) { publisher in
                        NavigationLink {
                            ComicsListView(publisher: publisher)
                        }  label: {
                            Text("link to all \(publisher) comics")
                        }
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
