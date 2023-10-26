//
//  RealmManager.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/26/23.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    private(set) var realm: Realm?
    init(name: String) {
        initializeSchema(name: name)
    }
    
    func initializeSchema(name: String) {
        let docDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let realmFileUrl = docDir.appendingPathComponent("\(name).realm")
        let config = Realm.Configuration(fileURL: realmFileUrl, schemaVersion: 1) { migration, oldSchemaVersion in
            //OG schema version = 0 always
            if oldSchemaVersion < 1 {
                
            }
        }
    }
}
