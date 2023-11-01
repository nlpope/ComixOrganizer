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
 edit this boilerplate using: cmd + shift + L
 --------------------------
 NOTES:
 //JSON lesson sources:
 https://medium.com/swlh/how-to-work-with-json-in-swift-83cd93a837e
 https://www.youtube.com/watch?v=J06P6AMKo5Q

 --------------------------
 */
