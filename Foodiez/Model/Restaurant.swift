//
//  Restaurant.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import Foundation

struct Restaurant {
    let name: String
    let address: String
    let time: String
    let cuisines: String
    let averageCost: String
    let phone: String
    let imageName: String
}

extension Restaurant {
    static func all() -> [Restaurant] {
        var getAll = [Restaurant]()
        getAll.append(Restaurant(name: "Zalad", address: "Park Avenue 982", time: "08:00 - 17:00", cuisines: "Snacks, Healthy", averageCost: "$5 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_1"))
        getAll.append(Restaurant(name: "Taco Bell", address: "12 Washington St", time: "09:00 - 21:00", cuisines: "Snacks, Mexican", averageCost: "$5 - $25", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_2"))
        getAll.append(Restaurant(name: "Fegans Addict", address: "Federal Boulevard 11", time: "08:00 - 17:00", cuisines: "Snacks, Healthy", averageCost: "$10 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_3"))
        getAll.append(Restaurant(name: "EZ Snak", address: "Federal Boulevard 98", time: "10:00 - 20:00", cuisines: "Snacks, Western", averageCost: "$5 - $50", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_4"))
        getAll.append(Restaurant(name: "Pasta La Vista", address: "Edington Avenue 104", time: "08:00 - 20:00", cuisines: "Main, Italian", averageCost: "$1 - $100", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_5"))
        getAll.append(Restaurant(name: "Potatata", address: "10 Sunset Park", time: "11:00 - 20:00", cuisines: "Snacks, Western", averageCost: "$5 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_6"))
        getAll.append(Restaurant(name: "Zalad 2", address: "12 Sunset Park", time: "08:00 - 17:00", cuisines: "Snacks, Healthy", averageCost: "$5 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_7"))
        getAll.append(Restaurant(name: "Panties Pizza", address: "Elgiorno St 77", time: "12:00 - 20:00", cuisines: "Bread, Italian", averageCost: "$10 - $50", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_8"))
        getAll.append(Restaurant(name: "Vegiez", address: "55 Chicago St", time: "08:00 - 17:00", cuisines: "Snacks, Healthy", averageCost: "$5 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_9"))
        getAll.append(Restaurant(name: "The Brits", address: "Westeshire Palace", time: "08:00 - 17:00", cuisines: "Main, Western", averageCost: "$5 - $50", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_10"))
        getAll.append(Restaurant(name: "Satay", address: "Chinatown Park 2", time: "08:00 - 17:00", cuisines: "Main, Asian", averageCost: "$5 - $50", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_11"))
        getAll.append(Restaurant(name: "Got Rice", address: "Chinatown Park 10", time: "08:00 - 17:00", cuisines: "Main, Asian", averageCost: "$5 - $40", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_12"))
        getAll.append(Restaurant(name: "Randormal", address: "Yorkshire St 11", time: "09:00 - 20:00", cuisines: "Snacks, Main", averageCost: "$5 - $100", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_13"))
        getAll.append(Restaurant(name: "Ziegler", address: "Wall Street 19", time: "08:00 - 17:00", cuisines: "Main, German", averageCost: "$5 - $70", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_14"))
        getAll.append(Restaurant(name: "Bread Palace", address: "Bene St 88", time: "09:00 - 20:00", cuisines: "Snacks, Italian", averageCost: "$5 - $50", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_15"))
        return getAll
    }
}
