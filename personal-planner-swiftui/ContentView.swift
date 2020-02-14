//
//  ContentView.swift
//  personal-planner-swiftui
//
//  Created by Calvin Aquino on 2020-01-20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ShoppingListScreen()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Mercado")
                }
            FinancesScreen()
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Finanças")
                }
        }
        .font(.headline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
