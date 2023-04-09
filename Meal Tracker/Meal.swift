//
//  Meal.swift
//  Meal Tracker
//
//  Created by Zane Jones on 3/7/23.
//

import Foundation

struct Meal{
    var name: String
    var food: [Food]
    
    init(name: String, food: [Food]) {
        self.name = name
        self.food = food
    }
}
