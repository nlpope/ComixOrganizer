//
//  ComixOrganizerApp.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/18/23.
//

import SwiftUI

@main
struct EntryPoint: App {
    @StateObject var realmManager = RealmManager(name: "schema 2")
    //start @ Publisher Select View
    //then on to titles (in alpha order) under said Publisher
    //> filterable by character
    //then on to runs & volumes in order of release date
    var body: some Scene {
        WindowGroup {
            TabView {
                PublisherSelectView()
                //ComicListView pushed onto stack after selecting from here
                    .tabItem {
                        Label("Publishers", systemImage: "list.dash")
                    }
                
                AllComicsListView()
                    .tabItem {
                        Label("Comics", systemImage: "list.dash")
                    }
                
            }
            .onAppear {
                print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!)
            }
        }
    }
}
