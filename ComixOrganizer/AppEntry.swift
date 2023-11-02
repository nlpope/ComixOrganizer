//
//  ComixOrganizerApp.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/18/23.
//

import SwiftUI

@main
struct AppEntry: App {
    @StateObject var realmManager = RealmManager(name: "schema 2")
    
    var body: some Scene {
        WindowGroup {
            TabView {
                PublisherSelectView()
                //ComicListView pushed onto stack after selecting from here
                    .tabItem {
                        Label("Publishers", systemImage: "list.dash")
                    }
                    .environmentObject(realmManager)
                
                AllComicsListView()
                    .tabItem {
                        Label("Comics", systemImage: "list.dash")
                    }
            }
            .onAppear {
                UserDefaults.standard.setValue(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
//                print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
            }
        }
    }
}

/**
 > edit this boilerplate using: cmd + shift + L
 > hide/reveal debug area = cmd + shift + Y
 > hide/reveal console = cmd + shift + C
 > hide/reveal left pane = cmd + 0
 > hide/reveal right pane = cmd + shift + 0
 > hide/reveal preview window = cmd + shift + enter
 --------------------------
 NOTES:
 //JSON lesson sources:
 https://medium.com/swlh/how-to-work-with-json-in-swift-83cd93a837e
 https://www.youtube.com/watch?v=J06P6AMKo5Q
 
 testing 11.01

 --------------------------
 */


