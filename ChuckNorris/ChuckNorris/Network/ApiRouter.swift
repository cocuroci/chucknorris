//
//  ApiRouter.swift
//  ChuckNorris
//
//  Created by André Cocuroci on 30/05/18.
//  Copyright © 2018 Stone. All rights reserved.
//

import Moya

enum ApiRouter {
    case search(query: String)
    case categories
}

extension ApiRouter: TargetType {
    var baseURL: URL {
        return URL(string: "https://api.chucknorris.io/jokes")!
    }
    
    var path: String {
        switch self {
        case .search:
            return "search"
        case .categories:
            return "categories"
        }
    }
    
    var method: Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .search(let query):
            return .requestParameters(parameters: ["query": query], encoding: URLEncoding.queryString)
        case .categories:
            return .requestPlain
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
