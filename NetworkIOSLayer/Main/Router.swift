//
//  Router.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation
import Combine

protocol HTTPClient {
    
    associatedtype Route: RouteProvider
    func request<T: Decodable>(_ model: T.Type, from route: Route, urlSession: URLSession) -> AnyPublisher<HTTPResponse<T>, HTTPError>
    
}

final class Client<Route: RouteProvider>: HTTPClient {
    
    func request<T>(_ model: T.Type, from route: Route, urlSession: URLSession = URLSession.shared) -> AnyPublisher<HTTPResponse<T>, HTTPError> {
        fatalError("")
    }
    
}
