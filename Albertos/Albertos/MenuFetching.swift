//
//  MenuFetching.swift
//  Albertos
//
//  Created by 김동영 on 4/16/25.
//

import Foundation
import Combine

protocol MenuFetching {
    func fetchMenu() -> AnyPublisher<[MenuItem], Error>
}
