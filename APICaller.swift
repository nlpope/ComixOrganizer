//
//  APICaller.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/28/23.
//

import Foundation

struct Constants {
    static let API_KEY = "TBD"
    static let baseURL = "https://metron.cloud/api"
}

enum APIError: Error {
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    func getPublishers(completion: @escaping (Result<[Publisher], Error>) -> Void) {
        
    }

}







extension Bundle {
    func decode<T: Decodable>(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Could not find \(file) in this project")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Could not load \(file) in this project")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Could not decode \(file) in this project")
        }
        
        return loadedData
        
    }
}
