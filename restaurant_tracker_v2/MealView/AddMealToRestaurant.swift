//
//  AddMealToRestaurant.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/23/24.
//

import SwiftUI

struct AddMealToRestaurant: View {
    @State private var rest: Restaurant
    
    init(rest: Restaurant) {
        self.rest = rest
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    AddMealToRestaurant(rest: Restaurant.testaurant)
}
