//
//  HomeTabView.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import SwiftUI

struct HomeTabView: View {
    
    @StateObject var homeTabVM = HomeTabVM()
    
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    TabView {
                        Image("placeholder_food_1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity, height: 200)
                        Image("placeholder_food_5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity, height: 200)
                        Image("placeholder_food_3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity, height: 200)
                        Image("placeholder_food_4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: .infinity, height: 200)
                    }.tabViewStyle(PageTabViewStyle())
                    .frame(height: 200)
                    
                    HStack {
                        Text("Most Popular")
                            .font(Font.custom("Arial", size: 20))
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("See all")
                            .font(Font.custom("Arial", size: 16))
                            .foregroundColor(Color(hex: Configs.CLR_LINK))
                    }.padding(EdgeInsets(top: 6, leading: 16, bottom: 0, trailing: 10))
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(self.homeTabVM.mostPopular, id: \.id) { restaurant in
                                FoodPopularCell(foodPopularVM: restaurant)
                            }
                        }
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 6, trailing: 0))
                    .frame(height: 262)
                }
                
                VStack {
                    HStack {
                        Text("Meal Deals")
                            .font(Font.custom("Arial", size: 20))
                            .fontWeight(.semibold)
                        
                        Spacer()
                        
                        Text("See all")
                            .font(Font.custom("Arial", size: 16))
                            .foregroundColor(Color(hex: Configs.CLR_LINK))
                    }.padding(EdgeInsets(top: 6, leading: 16, bottom: 0, trailing: 10))
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(self.homeTabVM.mealDeals, id: \.id) { mealDeal in
                                MealDealCell(mealDealVM: mealDeal)
                            }
                        }
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 6, trailing: 0))
                    .frame(height: 315)
                }
                
                Spacer()
            }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
