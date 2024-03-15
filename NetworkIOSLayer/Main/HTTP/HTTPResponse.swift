//
//  HTTPResponse.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation

struct HTTPResponse<T: Decodable> {
    let route: RouteProvider
       let response: HTTPURLResponse?
       let data: Data?

       var decoded: T? {
           guard let data = data else { return nil }
           return try? JSONDecoder().decode(T.self, from: data)
       }
}
