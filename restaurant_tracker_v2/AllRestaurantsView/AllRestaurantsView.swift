//
//  ContentView.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/14/24.
//

import SwiftUI
import SwiftData

struct AllRestaurantsView: View {
    @ObservedObject var dc = DataController()
    @Environment(\.modelContext) var context
    @Query var restaurants: [Restaurant]
    
    var body: some View {
            NavigationStack {
                if restaurants.isEmpty {
                    Text("Add some restaurants for them to appear")
                }
                
                List {
                    ForEach(restaurants) { rest in
                        NavigationLink(rest.name, value: rest)
                    } .onDelete { indexSet in
                        dc.delete(indexSet, restaurants: restaurants, context: context)
                    }
                }
                .toolbar {
                    Button {
                        dc.addRestaurantIsPresented = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                
                .navigationDestination(for: Restaurant.self) { rest in
                    RestaurantView(rest: rest)
                }
           }
            
            .sheet(isPresented: $dc.addRestaurantIsPresented) {
                AddRestaurantView(viewIsPresented: $dc.addRestaurantIsPresented)
                    .modelContext(context)
            }
    }
}

#Preview {
    AllRestaurantsView()
}
