//
//  FoodPopularCell.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import SwiftUI

struct FoodPopularCell: View {
    
    @ObservedObject var foodPopularVM: FoodPopularVM
    
    var body: some View {
        ZStack() {
            Color.white
            
            VStack {
                Image(self.foodPopularVM.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 170, height: 150)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(self.foodPopularVM.name)
                        .font(Font.custom("Arial", size: 18))
                        .fontWeight(.semibold)
                    
                    Text(self.foodPopularVM.address)
                        .font(Font.custom("Arial", size: 15))
                        .foregroundColor(Color(hex: Configs.CLR_GRAY))
                    
                    Text(self.foodPopularVM.cuisines)
                        .font(Font.custom("Arial", size: 13))
                        .foregroundColor(Color(hex: Configs.CLR_GRAY))
                    
                }.frame(width: 170, alignment: .leading)
                .padding(EdgeInsets(top: 0, leading: 30, bottom: 15, trailing: 0))
            }
            
        }.frame(width: 170, height: 230, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(lineWidth: 1)
                    .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                    .opacity(0.3))
        .cornerRadius(16)
        .shadow(radius: 8)
        .padding(EdgeInsets(top: 6, leading: 6, bottom: 6, trailing: 10))
    }
}

struct FoodPopularCell_Previews: PreviewProvider {
    static var previews: some View {
        FoodPopularCell(foodPopularVM: FoodPopularVM(restaurant: Restaurant(name: "Taco bell", address: "Address 123", time: "11:00 - 20:00", cuisines: "Snacks, Mexican", averageCost: "$5 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_1")))
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
