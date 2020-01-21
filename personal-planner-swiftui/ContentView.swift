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
                    Image(systemName: "1.square.fill")
                    Text("Compras")
                }
            FinancesScreen()
                .tabItem {
                    Image(systemName: "2.square.fill")
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
