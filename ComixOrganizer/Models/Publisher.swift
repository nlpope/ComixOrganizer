//
//  Publisher.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/24/23.
//

import Foundation
import RealmSwift

//struct PublisherResponse: Decodable {
//    let results: [Publisher]
//}

class Publisher: Object, ObjectKeyIdentifiable, Codable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var name: String
    @Persisted var comics: List<Comic>
    @Persisted var results: List<Publisher>
}


