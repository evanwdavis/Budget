//
//  Expense.swift
//  Budget
//
//  Created by Evan Davis on 1/5/17.
//  Copyright © 2017 Evan Davis. All rights reserved.
//

import Foundation
import RealmSwift


//RANDOM THOUGHTS 

// MAKE DATA IMMUTABLE! DO SOME READING

// FOR DISPLAY, HAVING A MONTHLY BUDGET MIGHT BE GOOD, ALSO SHOW $$/day to spend or w/e - different ways of thinking about making that budget last through the month. 

//item #1 though - nail the Expense data model, build a quick and dirty way of adding them. 

//item #2 - display expenses montly

//item #3 - make it pretty. 

//item #4 - export to CSV 

//item #5 - ship it. 


final class Expense: Object {
    dynamic var expenseText = ""
    dynamic var category = ""
    dynamic var amount = 0.0
    dynamic var date = Date()
    var place = Place()
    
    
    convenience init(text: String) {
        self.init()
    }
}
