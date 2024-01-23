//
//  MealView.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/22/24.
//

import SwiftUI

struct MealView: View {
    @State var meal: Meal
    
   
    var body: some View {
        Text(meal.name)
    }
}

#Preview {
    MealView(meal: Meal(name: "Test Meal"))
}
