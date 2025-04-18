//
//  PaymentProcessing.swift
//  Albertos
//
//  Created by 김동영 on 4/18/25.
//

import Combine

protocol PaymentProcessing {
    func process(for order: Order) -> AnyPublisher<Void, Error>
}
