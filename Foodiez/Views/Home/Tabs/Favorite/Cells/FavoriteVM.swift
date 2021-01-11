//
//  FavoriteVM.swift
//  Foodiez
//
//  Created by Marchell on 11/01/21.
//

import Foundation

class FavoriteVM: ObservableObject {
    let id = UUID()
    var restaurant: Restaurant
    
    var imageName: String {
        return self.restaurant.imageName
    }
    
    var name: String {
        return self.restaurant.name
    }
    
    var time: String {
        return self.restaurant.time
    }
    
    var address: String {
        return self.restaurant.address
    }
    
    var cuisines: String {
        return self.restaurant.cuisines
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
