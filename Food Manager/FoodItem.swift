//
//  FoodItem.swift
//  Food Manager
//

import Foundation

struct FoodItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var imgName: String
    var description: String
    var quantity: Int
    var quantityType: String
}
