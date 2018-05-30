//
//  Category.swift
//  ChuckNorris
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation

struct Category: Decodable {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}
