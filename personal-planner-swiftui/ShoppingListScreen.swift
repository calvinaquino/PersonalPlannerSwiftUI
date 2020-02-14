//
//  ShoppingListScreen.swift
//  personal-planner-swiftui
//
//  Created by Calvin Aquino on 2020-01-20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import Combine
import SwiftUI

struct ShoppingListScreen: View {
    
    @ObservedObject var shoppingList = ShoppingList()
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar()
                List(shoppingList.items) { item in
                    Text(item.name)
                }
            }
            .navigationBarTitle("Mercado", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("HEY")
            }) {
                Image(systemName: "plus")
            })
        }
    }
}

struct ShoppingListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListScreen()
    }
}
