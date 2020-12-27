//
//  RestaurantDetailVM.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

class RestaurantDetailVM: ObservableObject {
    var restaurant: Restaurant
    var reviews = [Review]()
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
        setReviews()
    }
    
    func setReviews() {
        let reviews = Review.all()
        for _ in 1...3 {
            self.reviews.append(reviews.randomElement()!)
        }
    }
}
