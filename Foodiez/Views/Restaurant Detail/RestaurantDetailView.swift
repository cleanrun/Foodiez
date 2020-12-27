//
//  RestaurantDetailView.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import SwiftUI

struct RestaurantDetailView: View {
    
    @ObservedObject var restaurantDetailVM: RestaurantDetailVM

    init(restaurant: Restaurant) {
        UIScrollView.appearance().bounces = false
        self.restaurantDetailVM = RestaurantDetailVM(restaurant: restaurant)
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Image(self.restaurantDetailVM.restaurant.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                
                Button("Order Food Online") {
                    // Order food action
                }.buttonStyle(PrimaryButtonStyle())
                .frame(height: 50, alignment: .center)
                .padding(EdgeInsets(top: 0, leading: -5, bottom: 0, trailing: -5))
                
                HStack {
                    VStack {
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                        
                        Text("Share")
                            .font(Font.custom("Arial", size: 14))
                    }.padding(EdgeInsets(top: 10, leading: 15, bottom: 5, trailing: 15))
                    
                    VStack {
                        Image(systemName: "star")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                        
                        Text("Review")
                            .font(Font.custom("Arial", size: 14))
                    }.padding(EdgeInsets(top: 10, leading: 15, bottom: 5, trailing: 15))
                    
                    VStack {
                        Image(systemName: "camera")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30, alignment: .center)
                        
                        Text("Photo")
                            .font(Font.custom("Arial", size: 14))
                    }.padding(EdgeInsets(top: 10, leading: 15, bottom: 5, trailing: 15))
                }
                
                ZStack {
                    Image("placeholder_map")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 120)
                        .clipped()
                        .shadow(radius: 7)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text(self.restaurantDetailVM.restaurant.address)
                                .font(Font.custom("Arial", size: 16))
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                            
                            Text(self.restaurantDetailVM.restaurant.cuisines)
                                .font(Font.custom("Arial", size: 16))
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                            
                            Text(self.restaurantDetailVM.restaurant.time)
                                .font(Font.custom("Arial", size: 16))
                                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        }
                        
                        Spacer()
                        
                        Image(systemName: "location.north")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 25, alignment: .center)
                            .foregroundColor(.blue)
                    }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 50))
                }.frame(height: 130)
                
                VStack {
                    HStack {
                        Text("Call")
                            .font(Font.custom("Arial", size: 18))
                            .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        
                        Spacer()
                        
                        Text(self.restaurantDetailVM.restaurant.phone)
                            .font(Font.custom("Arial", size: 18))
                            .foregroundColor(Color(hex: Configs.CLR_LINK))
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                    HStack {
                        Text("Cuisines")
                            .font(Font.custom("Arial", size: 18))
                            .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        
                        Spacer()
                        
                        Text(self.restaurantDetailVM.restaurant.cuisines)
                            .font(Font.custom("Arial", size: 18))
                            .foregroundColor(Color(hex: Configs.CLR_LINK))
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                    HStack {
                        Text("Average Cost")
                            .font(Font.custom("Arial", size: 18))
                            .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        
                        Spacer()
                        
                        Text(self.restaurantDetailVM.restaurant.averageCost)
                            .font(Font.custom("Arial", size: 18))
                            .foregroundColor(Color(hex: Configs.CLR_LINK))
                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                }.padding(EdgeInsets(top: 10, leading: 16, bottom: 5, trailing: 16))
            }
            
            VStack {
                HStack {
                    Text("Reviews")
                        .font(Font.custom("Arial", size: 20))
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                
                LazyVStack {
                    ForEach(self.restaurantDetailVM.reviews) { review in
                        ReviewCell(review: review)
                    }
                }
                
            }.padding(EdgeInsets(top: 10, leading: 16, bottom: 5, trailing: 16))
            
            Color.white
                .frame(height: 30)
            
        }.ignoresSafeArea(edges: .top)
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: Restaurant(name: "Zalad", address: "Park Avenue 982", time: "08:00 - 17:00", cuisines: "Snacks, Healthy", averageCost: "$5 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_1"))
    }
}
