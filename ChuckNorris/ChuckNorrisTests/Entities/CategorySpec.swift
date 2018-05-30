//
//  CategorySpec.swift
//  ChuckNorrisTests
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Quick
import Nimble

@testable import ChuckNorris

class CategorySpec: QuickSpec {
    override func spec() {
        
        let decoder = JSONDecoder()
        
        describe("Parse categories array") {
          it("success") {
                let categories = "[\"explicit\", \"dev\", \"movie\", \"food\"]"
                let data = categories.data(using: String.Encoding.utf8)!
                let stringsArray = try? decoder.decode([String].self, from: data)
                let result = stringsArray?.map(ChuckNorris.Category.init)
                
                expect(stringsArray).to(contain("explicit", "dev", "movie", "food"))
                expect(result).toNot(beNil())
                expect(result?.count) == 4
            }
        }
    }
}
