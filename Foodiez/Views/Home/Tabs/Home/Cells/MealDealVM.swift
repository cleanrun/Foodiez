//
//  MealDealVM.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

class MealDealVM: ObservableObject, Identifiable {
    let id = UUID()
    var category: Category
    
    var name: String {
        return self.category.name
    }
    
    var placeCount: Int {
        return self.category.placeCount
    }
    
    var imageName: String {
        return self.category.imageName
    }
    
    init(category: Category) {
        self.category = category
    }
}
