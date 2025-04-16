//
//  ContentView.swift
//  Albertos
//
//  Created by 김동영 on 4/15/25.
//

import SwiftUI

struct MenuList: View {
    let sections: [MenuSection]
    
    var body: some View {
        List {
            ForEach(sections) { section in
                Section(header: Text(section.category)) {
                    ForEach(section.items) { item in
                        MenuRow(viewModel: .init(item: item))
                    }
                }
            }
        }
        .navigationTitle("Alberto's 🇮🇹")
    }
}

extension MenuList {
    struct ViewModel {
        let sections: [MenuSection]
        
        init(menu: [MenuItem], menuGrouping: @escaping ([MenuItem]) -> [MenuSection]) {
            self.sections = menuGrouping(menu)
        }
    }
}

#Preview {
    NavigationStack{
        MenuList(sections: groupMenuByCategory(menu))
    }
}
