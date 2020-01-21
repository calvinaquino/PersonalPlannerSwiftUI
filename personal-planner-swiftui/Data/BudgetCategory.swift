//
//  BudgetCategory.swift
//  personal-planner-swiftui
//
//  Created by Calvin Aquino on 2020-01-20.
//  Copyright © 2020 Aquino. All rights reserved.
//

import Foundation

struct BudgetCategory: Identifiable {
    var id = UUID()
    var name: String
    var budgetValue: Double
}
