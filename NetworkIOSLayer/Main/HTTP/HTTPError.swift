//
//  HTTPErrir.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation

struct HTTPError: Error {
    
    private enum Code: Int {
        case unknown                        = -1
        case networkUnreachable             = 0
        case unableToParseResponse          = 1
        case badRequest                     = 400
        case internalServerError            = 500
    }

    let route: RouteProvider?
    let response: HTTPURLResponse?
    let error: Error?

    var message: String {
        switch Code(rawValue: response?.statusCode ?? -1) {
        case .unknown:
            return "Something went wrong"
        case .networkUnreachable:
            return "Please check your internet connectivity"
        default:
            return systemMessage
        }
    }

    private var systemMessage: String {
        HTTPURLResponse.localizedString(forStatusCode: response?.statusCode ?? 0)
    }

}
