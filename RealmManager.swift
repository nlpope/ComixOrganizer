//
//  RealmManager.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/26/23.
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject {
    private(set) var localRealm: Realm?
    init(name: String) {
        initializeSchema(name: name)
    }
    
    func initializeSchema(name: String) {
        let docDir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        let realmFileUrl = docDir.appendingPathComponent("\(name).realm")
        let config = Realm.Configuration(fileURL: realmFileUrl, schemaVersion: 2) { migration, oldSchemaVersion in
            //OG schema version = 0 always
            if oldSchemaVersion < 2 {
               
                migration.enumerateObjects(ofType: Publisher.className()) { oldObject, newObject in
                    newObject!["name"] = ""
                    newObject!["comics"] = List<Comic>.self
                }
                
                
                migration.renameProperty(onType: Comic.className(), from: "volume", to: "issue")
                migration.renameProperty(onType: Comic.className(), from: "releaseDAte", to: "releaseDate")
            }
        }
        Realm.Configuration.defaultConfiguration = config
        print("docDir path = ", docDir.path)
        do {
            localRealm = try Realm()
        } catch {
            print("error loading default Realm:", error)
        }
    }
}
