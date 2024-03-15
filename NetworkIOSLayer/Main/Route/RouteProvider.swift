//
//  RouteProvider.swift
//  NetworkLayer
//
//  Created by Lukas on 08/03/2024.
//

import Foundation

protocol RouteProvider {
    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: [String: String] { get }
}
