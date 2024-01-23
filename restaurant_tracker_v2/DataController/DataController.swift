//
//  DataController.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/17/24.
//

import Foundation
import SwiftData

class DataController: ObservableObject {
    
    //Vars for itemDetailview
    @Published var addRestaurantIsPresented: Bool = false
    
    //Vars for add view
    @Published var name = "" 
    
    func add(_ restName: String, to context: ModelContext) {
        let rest = Restaurant(name: restName, meals: [])
        context.insert(rest)
    }
    
    func update(to context: ModelContext) throws {
        do {
           try context.save()
        } catch {
            print("Error saving context")
            throw error
        }
    }
    
    func delete(_ indexSet: IndexSet, restaurants : [Restaurant], context: ModelContext) {
        for i in indexSet {
            let rest = restaurants[i]
            context.delete(rest)
        }
    }
}
