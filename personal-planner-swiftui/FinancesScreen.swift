//
//  FinancesScreen.swift
//  personal-planner-swiftui
//
//  Created by Calvin Aquino on 2020-01-20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import SwiftUI

struct FinancesScreen: View {
    
    var transactions: [TransactionItem] = [
        TransactionItem(name: "Gasolina", value: -100),
        TransactionItem(name: "Playstation5", value: -500),
        TransactionItem(name: "Salário", value: 1500)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                List(transactions) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text(String(item.value))
                    }
                }
                Toolbar {
                    Button(action: {}) {
                        Image(systemName: "chevron.left")
                    }
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "chevron.right")
                    }
                }
            }
            .navigationBarTitle("Finanças", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                print("HEY")
            }) {
                Image(systemName: "plus")
            })
        }
    }
}

struct FinancesScreen_Previews: PreviewProvider {
    static var previews: some View {
        FinancesScreen()
    }
}
