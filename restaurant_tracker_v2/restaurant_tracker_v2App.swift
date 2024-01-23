//
//  restaurant_tracker_v2App.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/14/24.
//

import SwiftUI

@main
struct restaurant_tracker_v2App: App {
    var body: some Scene {
        WindowGroup {
            AllRestaurantsView()
        }
        .modelContainer(for: Restaurant.self)
    }
}
