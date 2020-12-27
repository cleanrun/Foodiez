//
//  MealDealCell.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import SwiftUI

struct MealDealCell: View {
    
    @ObservedObject var mealDealVM: MealDealVM
    
    var body: some View {
        ZStack {
            Color(hex: Configs.CLR_GRAY)
            
            Image(self.mealDealVM.imageName)
                .resizable()
                .frame(width: .infinity, height: .infinity)
                .opacity(0.6)
                .aspectRatio(contentMode: .fill)
            
            VStack(alignment: .leading) {
                Spacer()
                
                Text(self.mealDealVM.name)
                    .font(Font.custom("Arial", size: 16))
                    .foregroundColor(.white)
                
                Text("\(self.mealDealVM.placeCount) Places")
                    .font(Font.custom("Arial", size: 12))
                    .foregroundColor(.white)
                
            }.frame(width: 170, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: 20, bottom: 10, trailing: 0))
            
        }.frame(width: 170, height: 280, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 16)
                    .stroke(lineWidth: 1)
                    .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                    .opacity(0.3))
        .cornerRadius(16)
        .shadow(radius: 8)
        .padding(EdgeInsets(top: 6, leading: 6, bottom: 6, trailing: 10))
    }
}

struct MealDealCell_Previews: PreviewProvider {
    static var previews: some View {
        MealDealCell(mealDealVM: MealDealVM(category: Category(name: "Greek Style", placeCount: 12, imageName: "placeholder_food_1")))
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}

