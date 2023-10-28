//
//  DetialsView.swift
//  Food Manager
//

import SwiftUI

struct DetailsView: View {
    let foodItem: FoodItem
    
//    let foodItems:[FoodItem] = [
//    FoodItem(name: "Bread", imgName: "bread", description: "This bread is so frickin good, it's unbelievable.", quantity: 5, quantityType: "Slices"),
//    FoodItem(name: "Cheese", imgName: "cheese", description: "Hold guacamole, this is some good cheese... No guacamole involved, sorry for the false advertising.", quantity: 6, quantityType: "Slices"),
//    FoodItem(name: "Eggs", imgName: "eggs", description: "Egg. Egg yum. Good egg for breakfast.", quantity: 3, quantityType: "Eggs")]

    
  
    var body: some View {


        ZStack {
            Color(.red)
                .ignoresSafeArea()

            VStack {
                VStack(alignment: .leading, spacing: 20.0) {

                    Image(foodItem.imgName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(30)

                    HStack {
                        Text(foodItem.name)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                        Spacer()
                        Text(String(foodItem.quantity) + " " + foodItem.quantityType)
                            .font(.headline)
                    }

                    Text(foodItem.description)
                        .font(.headline)
                }
                .padding()
                .background(Rectangle()
                    .foregroundColor(.white)
                    .cornerRadius(30)
                    .shadow(radius: 15))
                .padding()
            }
        }
    }
    
}

#Preview {
    DetailsView(foodItem: FoodItem(name: "NA", imgName: "NA", description: "NA", quantity: 0, quantityType: "NA"))
}
