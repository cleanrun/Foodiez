//
//  FoodPopularVM.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

class FoodPopularVM: ObservableObject, Identifiable {
    let id = UUID()
    var restaurant: Restaurant
    
    var name: String {
        return self.restaurant.name
    }
    
    var address: String {
        return self.restaurant.address
    }
    
    var cuisines: String {
        return self.restaurant.cuisines
    }
    
    var imageName: String {
        return self.restaurant.imageName
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
