//
//  AddRestaurantView.swift
//  restaurant_tracker_v2
//
//  Created by Tyler Radke on 1/16/24.
//

import SwiftUI
import SwiftData

struct AddRestaurantView: View {
    @ObservedObject var dc = DataController()
    @Environment(\.modelContext) var context
    @Query var restaurants: [Restaurant]
    
    @Binding var viewIsPresented: Bool
    
    var body: some View {
            HStack {
                Spacer()
                TextField("Add a restaurant name", text: $dc.name)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                Spacer()
            }
            .padding()
            
            Button(action: {
                dc.add(dc.name, to: context)
                viewIsPresented = false
            }) {
                Text("Add")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding(.horizontal)
            .padding(.top, 16)
    }

}

#Preview {
    AddRestaurantView(viewIsPresented: .constant(true))
}
