//
//  ContentView.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/18/23.
//

import SwiftUI

struct ComicListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ComicListView_Previews: PreviewProvider {
    static var previews: some View {
        ComicListView()
    }
}
