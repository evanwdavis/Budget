//
//  Category.swift
//  Budget
//
//  Created by Evan Davis on 1/5/17.
//  Copyright © 2017 Evan Davis. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    
    dynamic var name: String?
    dynamic var iconName: String?
    var budgetMonthly: Double?
    var budgetWeekly: Double?
    dynamic var expenses:[Expense]?
}
