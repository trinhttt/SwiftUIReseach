//
//  NetworkManager.swift
//  News
//
//  Created by Trinh Thai on 3/7/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil, let data = data {
                    let decoder = JSONDecoder()
                    do {
                        let result = try decoder.decode(Result.self, from: data)
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }
}
