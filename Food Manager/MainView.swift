//
//  ContentView.swift
//  Food Manager
//

import SwiftUI

struct MainView: View {
    
    let foodItems:[FoodItem] = [
        FoodItem(name: "Bread", imgName: "bread", description: "This bread is so frickin good, it's unbelievable.", quantity: 5, quantityType: "Slices"),
        FoodItem(name: "Cheese", imgName: "cheese", description: "Hold guacamole, this is some good cheese... No guacamole involved, sorry for the false advertising.", quantity: 6, quantityType: "Slices"),
        FoodItem(name: "Eggs", imgName: "eggs", description: "Egg. Egg yum. Good egg for bekfast.", quantity: 3, quantityType: "Eggs")]
    
    
    var body: some View {
        
        NavigationView {
            List(foodItems) { item in
                NavigationLink(destination: DetailsView(foodItem: item)) {
                    HStack {
                        Image(item.imgName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 70)
                        Text(item.name)
                        Spacer()
                        Text(String(item.quantity) + " " + item.quantityType)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}
