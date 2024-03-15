//
//  PlaceHolderRouter.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation

enum PlaceHolderRoute {
    case users
}

extension PlaceHolderRoute: RouteProvider {
    var baseURL: URL {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com") else {
                   fatalError("Base URL could not be configured.")
               }
               return url
    }
    
    var path: String {
        switch self {
               case .users: return "/users"
               }
    }
    
    var method: HTTPMethod {
            switch self {
            case .users: return .get(nil)
            }
        }

        var headers: [String : String] {
            return [:]
        }
    
    
    
    
}
