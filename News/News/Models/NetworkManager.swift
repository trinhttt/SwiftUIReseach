//
//  NetworkManager.swift
//  News
//
//  Created by Trinh Thai on 3/7/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var posts = [Post]()
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil, let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let results = try decoder.decode(Result.self, from: data)
                        DispatchQueue.main.async {
                            self.posts = results.hits
                        }
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }
}
