//
//  ShoppingItem.swift
//  personal-planner-swiftui
//
//  Created by Calvin Aquino on 2020-01-20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import Combine
import SwiftUI

class ShoppingList: ObservableObject {
    @Published private var list: [ShoppingItem] = []
    
    let mockedItems = [
        ShoppingItem(name: "Carne", isMissing: true),
        ShoppingItem(name: "Frango", isMissing: true),
        ShoppingItem(name: "Maionese", isMissing: false),
        ShoppingItem(name: "Suco", isMissing: true),
        ShoppingItem(name: "Sabão", isMissing: false),
    ]
    
    init() {
        self.fetch()
    }
    
    func removeAt(_ index: Int) {
        self.list.remove(at: index)
    }
    
    func add(_ item: ShoppingItem) {
        self.list.append(item)
    }
    
    func toggleItem(at index: Int) {
        self.list[index].isMissing.toggle()
    }
    
    var items: [ShoppingItem] {
        self.list
    }
    
    func fetch() {
        print("fetching shopping items")
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            self.list = self.mockedItems.shuffled()
        }
    }
}

struct ShoppingItem: Identifiable {
    var id = UUID()
    var name: String
    var isMissing: Bool
}
