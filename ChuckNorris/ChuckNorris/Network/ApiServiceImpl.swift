//
//  ApiServiceImpl.swift
//  ChuckNorris
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Moya
import RxMoya
import RxSwift

class ApiServiceImp: ApiService {
    
    let provider: MoyaProvider<ApiRouter>
    
    init(provider: MoyaProvider<ApiRouter>) {
        self.provider = provider
    }
    
    func search(_ query: String) -> Single<Response> {
        return self.provider.rx.request(.search(query: query))
    }
    
    func categories() -> Single<Response> {
        return self.provider.rx.request(.categories)
    }
}
