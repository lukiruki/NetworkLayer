//
//  HTTPMethod.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation

enum HTTPMethod {
    case get([String: String]? = nil)
    case put(HTTPContentType)
    case post(HTTPContentType)
    case patch(HTTPContentType)
    case delete
    
    public var rawValue: String {
           switch self {
           case .get: return "GET"
           case .put: return "PUT"
           case .post: return "POST"
           case .patch: return "PATCH"
           case .delete: return "DELETE"
           }
       }

}
