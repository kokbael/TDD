//
//  Alert.swift
//  Albertos
//
//  Created by 김동영 on 4/18/25.
//

import Foundation

struct Alert {
    struct ViewModel: Identifiable {
        let title: String
        let message: String
        let buttonText: String
        var id: String { title + message + buttonText }
    }
}
