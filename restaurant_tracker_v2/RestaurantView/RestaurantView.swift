//
//  RestaurantView.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/16/24.
//

import SwiftUI
import SwiftData

struct RestaurantView: View {
    @State private var rest: Restaurant
    @State private var addRestaurantIsPresented = false
    
    init(rest: Restaurant) {
        self.rest = rest
    }
    
    var body: some View {
        if rest.meals.isEmpty {
            Text("Add some meals to \(rest.name) for them to appear")
        }
        
            List {
                ForEach(rest.meals, id: \.self) { meal in
                    NavigationLink(meal.name, value: meal)
                }
            }
        
            .toolbar(content: {
                Button {
                    addRestaurantIsPresented = true
                } label: {
                    Image(systemName: "plus")
                }

            })
        
            .sheet(isPresented: $addRestaurantIsPresented) {
                AddMealToRestaurant(rest: Restaurant.testaurant)
            }
    }
}

#Preview {
    RestaurantView(rest: Restaurant.testaurant)
}

//MARK: Did not work for some reason, starting over
//            NavigationStack {
//                if rest.meals.isEmpty {
//                    Text("Add some meals for them to appear")
//                }
//                List {
//                    ForEach(rest.meals) { meal in
//                        NavigationLink(meal.name, value: meal)
//                    } .onDelete { indexSet in
//                        //dc.delete(indexSet, restaurants: restaurants, context: context)
//                    }
//                }
//                .navigationDestination(for: Meal.self) { meal in
//                  //  MealView(meal: meal)
//                }
//
//            }
//                //.toolbar {
////                Button {
////                   // dc.addRestaurantIsPresented = true
////                } label: {
////                    Image(systemName: "plus")
////                }
////            }
//            .sheet(isPresented: .constant(false)) {
////                AddRestaurantView(viewIsPresented: $dc.addRestaurantIsPresented)
////                    .modelContext(context)
//            }
