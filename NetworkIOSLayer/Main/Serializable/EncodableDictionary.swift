//
//  EncodableDictionary.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation

protocol EncodableDictionary {
    var asURLEncodedString: String? { get }
    var asURLEncodedData: Data? { get }
}

extension Dictionary {
    
    var asURLEncodedString: String? {
        var pairs: [String] = []
        for (key, value) in self {
            pairs.append("\(key)=\(value)")
        }
        
        return pairs.joined(separator: "&").addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }
    
    var asURLEncodedData: Data? {
        asURLEncodedString?.data(using: .utf8)
    }
    
}
