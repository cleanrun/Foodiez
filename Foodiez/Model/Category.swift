//
//  MealDeal.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

struct Category {
    let name: String
    let placeCount: Int
    let imageName: String
}

extension Category {
    static func all() -> [Category] {
        var getAll = [Category]()
        getAll.append(Category(name: "Greek Style", placeCount: 12, imageName: "category_greek"))
        getAll.append(Category(name: "Burgers", placeCount: 32, imageName: "category_burger"))
        getAll.append(Category(name: "Asian", placeCount: 9, imageName: "category_asian"))
        getAll.append(Category(name: "Snacks", placeCount: 41, imageName: "category_snack"))
        getAll.append(Category(name: "Healthy Food", placeCount: 16, imageName: "category_healthy"))
        getAll.append(Category(name: "Breads", placeCount: 9, imageName: "category_bread"))
        getAll.append(Category(name: "European Cuisine", placeCount: 26, imageName: "category_euro"))
        getAll.append(Category(name: "Vegan", placeCount: 4, imageName: "category_vegan"))
        getAll.append(Category(name: "Pasta", placeCount: 17, imageName: "category_pasta"))
        return getAll
    }
}
