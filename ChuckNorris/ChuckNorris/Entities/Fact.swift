//
//  Fact.swift
//  ChuckNorris
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation

struct Fact: Decodable {
    let id: String
    let url: String
    let iconUrl: String
    let description: String
    let category: [Category]
    
    enum CodingKeys: String, CodingKey {
        case id
        case url
        case iconUrl = "icon_url"
        case description = "value"
        case category
    }
}
