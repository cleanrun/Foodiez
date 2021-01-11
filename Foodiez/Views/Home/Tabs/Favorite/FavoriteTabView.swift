//
//  FavoriteTabView.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import SwiftUI

struct FavoriteTabView: View {
    
    private var favorites = [FavoriteVM]()
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color(hex: Configs.CLR_LIGHT_GRAY))
        
        let restaurants = Restaurant.all()
        for _ in 1...3 {
            let resto = restaurants.randomElement()!
            self.favorites.append(FavoriteVM(restaurant: resto))
        }
    }
    
    var body: some View {
        VStack {
            Text("Favorites")
                .font(Font.custom("Arial", size: 30))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            
            VStack {
                Color(hex: Configs.CLR_LIGHT_GRAY)
                    .frame(height: 5)
                
                List {
                    ForEach(self.favorites, id: \.id) { favorite in
                        FavoriteCell(favoriteVm: favorite)
                    }
                }
            }
            
        }
    }
}

struct FavoriteTabView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteTabView()
    }
}
