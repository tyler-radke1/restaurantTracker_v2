//
//  Restaurant.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/14/24.
//

import Foundation
import SwiftData
import SwiftUI

@Model
class Restaurant: Item {
    var name: String
    var meals: [Meal]
    var itemType = DisplayMode.restaurant
    
    init(name: String, meals: [Meal]) {
        self.name = name
        self.meals = meals
    }
    
    static var testaurant = Restaurant(name: "McDonald's", meals: [])
}

@Model
 class Meal: Item {
    var name: String
    var image: Data?
    var itemType = DisplayMode.meal
    
    init(name: String, image: Data? = nil) {
        self.name = name
        self.image = image
    }
}

public enum DisplayMode: Codable {
    case restaurant,meal
}


