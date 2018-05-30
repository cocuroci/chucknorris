//
//  ResultSpec.swift
//  ChuckNorrisTests
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Quick
import Nimble

@testable import ChuckNorris

class ResultSpec: QuickSpec {
    override func spec() {
        
        var response = ""
        let decoder = JSONDecoder()
        
        describe("Parse result") {
            beforeEach {
                response = "{\"total\": 1, \"result\": [{\"category\": [\"dev\"],\"icon_url\":\"https://assets.chucknorris.host/img/avatar/chuck-norris.png\",\"id\":\"UM5YXGC_Sxmed3Tzmr_Rgw\",\"url\":\"https://api.chucknorris.io/jokes/UM5YXGC_Sxmed3Tzmr_Rgw\",\"value\":\"Chuck Norris counted to infinity-twice\"}]}"
            }
            
            it("success") {
                let data = response.data(using: String.Encoding.utf8)!
                let result = try? decoder.decode(Result.self, from: data)
                expect(result).toNot(beNil())
                expect(result?.total) == 1
                expect(result?.result.count) == 1
            }
        }
        
        describe("Parse result") {
            beforeEach {
                response = "{\"total\": 1}"
            }
            
            it("fail") {
                let data = response.data(using: String.Encoding.utf8)!
                let result = try? decoder.decode(Result.self, from: data)
                expect(result).to(beNil())
            }
        }
    }
}
