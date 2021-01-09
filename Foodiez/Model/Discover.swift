//
//  Discovery.swift
//  Foodiez
//
//  Created by Marchell on 09/01/21.
//

import Foundation

struct Discover: Hashable {
    let iconName: String
    let title: String
    let placeCount: Int
}

extension Discover {
    static func all() -> [Discover] {
        var getAll = [Discover]()
        getAll.append(Discover(iconName: "ic_beer", title: "Bars & Hotels", placeCount: 42))
        getAll.append(Discover(iconName: "ic_dinner", title: "Fine Dining", placeCount: 15))
        getAll.append(Discover(iconName: "ic_cafe", title: "Cafes", placeCount: 28))
        getAll.append(Discover(iconName: "ic_nearby", title: "Nearby", placeCount: 34))
        getAll.append(Discover(iconName: "ic_fast_food", title: "Fast Foods", placeCount: 29))
        getAll.append(Discover(iconName: "ic_pizza", title: "Featured Foods", placeCount: 21))
        return getAll
    }
}
