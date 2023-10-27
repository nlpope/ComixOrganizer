//
//  Publisher.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/24/23.
//

import Foundation
import RealmSwift

class Publisher: Object, ObjectKeyIdentifiable, Codable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var name: String
    @Persisted var comics: List<Comic>
}
