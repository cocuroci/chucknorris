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
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.url = try container.decode(String.self, forKey: .url)
        self.iconUrl = try container.decode(String.self, forKey: .iconUrl)
        self.description = try container.decode(String.self, forKey: .description)
        if let result = try container.decodeIfPresent([String].self, forKey: .category) {
            self.category = result.map(Category.init)
        } else {
            self.category = []
        }
    }
}
