//
//  Expense.swift
//  Budget
//
//  Created by Evan Davis on 1/5/17.
//  Copyright © 2017 Evan Davis. All rights reserved.
//

import Foundation
import RealmSwift

final class Expense: Object {
    dynamic var expenseText = ""
    dynamic var category = ""
    dynamic var amount = 0.0
    var place = Place()
    
    
    convenience init(text: String) {
        self.init()
    }
}
