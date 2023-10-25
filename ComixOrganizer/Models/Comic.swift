//
//  Comic.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/20/23.
//

import Foundation
import RealmSwift

//Object = "I'm managed by realm"
class Comic: Object, ObjectKeyIdentifiable, Codable {
    //@Persisted = "I'm stored by realm"
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var publisher: String
    @Persisted var title: String
    @Persisted var issue: Int = 1
    @Persisted var releaseDate: Date?
    @Persisted var completed: Bool = false
    
    
    convenience init(publisher: String, title: String) {
        self.init()
        self.publisher = publisher
        self.title = title
    }
}
