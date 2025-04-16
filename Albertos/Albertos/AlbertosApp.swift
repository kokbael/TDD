//
//  AlbertosApp.swift
//  Albertos
//
//  Created by 김동영 on 4/15/25.
//

import SwiftUI

@main
struct AlbertosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MenuList(viewModel: .init(menuFetching: MenuFetchingPlaceholder()))
            }
        }
    }
}
