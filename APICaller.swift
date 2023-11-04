//
//  APICaller.swift
//  ComixOrganizer
//
//  Created by Noah Pope on 10/28/23.
//

import Foundation
import RealmSwift

struct Constants {
    static let API_KEY = "TBD"
    static let baseURL = "https://metron.cloud/api"
}

enum APIError: Error {
    case failedToGetData
}

class APICaller {
    static let shared = APICaller()
    
    func getPublishers(completion: @escaping (Result<List<Publisher>, Error>) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/publisher") else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {return}
            
            do {
                let results = try JSONDecoder().decode(Publisher.self, from: data)
                completion(.success(results.results))
                print(results)
            } catch {
                //instead of printing the err, we're passing in a failure to handle it directly from home viewcontroller
                completion(.failure(APIError.failedToGetData))
            }
        }
        
        task.resume()
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
