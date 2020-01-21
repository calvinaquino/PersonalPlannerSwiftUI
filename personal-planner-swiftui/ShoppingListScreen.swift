//
//  ShoppingListScreen.swift
//  personal-planner-swiftui
//
//  Created by Calvin Aquino on 2020-01-20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import SwiftUI

struct ShoppingListScreen: View {
    
    var shoppingList: [ShoppingItem] = [
        ShoppingItem(name: "Carne", isMissing: true),
        ShoppingItem(name: "Frango", isMissing: true),
        ShoppingItem(name: "Leite", isMissing: true)
    ]
    
    var body: some View {
        NavigationView {
            List(shoppingList) { item in
                Text(item.name)
            }
            .navigationBarTitle("Compras", displayMode: .inline)
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
