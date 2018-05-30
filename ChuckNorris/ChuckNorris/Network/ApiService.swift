//
//  ApiService.swift
//  ChuckNorris
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Moya
import RxSwift

protocol ApiService {
    func search(_ query: String) -> Single<Response>
    func categories() -> Single<Response>
}
