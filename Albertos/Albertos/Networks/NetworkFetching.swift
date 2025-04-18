//
//  NetworkFetching.swift
//  Albertos
//
//  Created by 김동영 on 4/17/25.
//

import Foundation
import Combine

protocol NetworkFetching {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError>
}
