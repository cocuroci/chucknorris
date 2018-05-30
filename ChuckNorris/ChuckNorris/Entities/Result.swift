//
//  Result.swift
//  ChuckNorris
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Foundation

struct Result: Decodable {
    let total: Int
    let result: [Fact]
}
