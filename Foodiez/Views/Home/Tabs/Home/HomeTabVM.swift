//
//  HomeTabVM.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

class HomeTabVM: ObservableObject {
    
    var mostPopular = [FoodPopularVM]()
    var mealDeals = [MealDealVM]()
    
    init() {
        self.setMostPopular()
        self.setMealDeals()
    }
    
    private func setMostPopular() {
        let restaurants = Restaurant.all()
        for _ in 1...5 {
            self.mostPopular.append(FoodPopularVM(restaurant: restaurants.randomElement()!))
        }
    }
    
    private func setMealDeals() {
        let categories = Category.all()
        for _ in 1...5 {
            self.mealDeals.append(MealDealVM(category: categories.randomElement()!))
        }
    }
}
