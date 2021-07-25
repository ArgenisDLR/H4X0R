//
//  PostData.swift
//  H4X0R
//
//  Created by argenis delarosa on 11/24/19.
//  Copyright © 2019 argenis delarosa. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let num_comments: Int
    let created_at: String
    let author: String
    let title: String
    let url: String?
}
