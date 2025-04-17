//
//  URLSession+NetworkFetching.swift
//  Albertos
//
//  Created by 김동영 on 4/17/25.
//

import Combine
import Foundation

extension URLSession: NetworkFetching {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {
        return dataTaskPublisher(for: request)
            .map { $0.data }
            .eraseToAnyPublisher()
    }
}
