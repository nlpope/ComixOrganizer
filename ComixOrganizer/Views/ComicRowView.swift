//
//  ComicRowView.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/31/23.
//

import SwiftUI

struct ComicRowView: View {
    var comic: String
    var completed: Bool
    var body: some View {
        HStack(spacing: 20) {
            Text(comic)
            Image(systemName: completed ? "checkmark.circle" : "circle")
        }
    }
}

#Preview {
    ComicRowView(comic: "Amazing Spiderman #1", completed: true)
}
