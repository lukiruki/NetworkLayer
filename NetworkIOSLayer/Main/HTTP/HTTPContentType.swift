//
//  HTTPContentType.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation

enum HTTPContentType {
    case json(Encodable?)
    case urlEncoded(EncodableDictionary)
    
    var headerValue: String {
            switch self {
            case .json: return "application/json"
            case .urlEncoded: return "application/x-www-form-urlencoded"
            }
        }
}
