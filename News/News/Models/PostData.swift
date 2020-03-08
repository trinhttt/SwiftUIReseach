//
//  PostData.swift
//  News
//
//  Created by Trinh Thai on 3/7/20.
//  Copyright © 2020 Trinh Thai. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

// Use Identifiable need to declare id property
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
