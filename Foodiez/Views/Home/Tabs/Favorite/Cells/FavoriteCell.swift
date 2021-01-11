//
//  FavoriteCell.swift
//  Foodiez
//
//  Created by Marchell on 11/01/21.
//

import SwiftUI

struct FavoriteCell: View {
    
    @ObservedObject var favoriteVm: FavoriteVM
    private let randomScore = String(format: "%.1f", Double.random(lower: 1.0, upper: 5.0))
    
    var body: some View {
        ZStack {
            Color.white
            
            HStack {
                Image(self.favoriteVm.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .center)
                    .clipped()
                    .cornerRadius(8)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                
                VStack(alignment: .leading) {
                    Text(self.favoriteVm.name)
                        .font(Font.custom("Arial", size: 20))
                        .fontWeight(.semibold)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                    
                    Text(self.favoriteVm.time)
                        .font(Font.custom("Arial", size: 10))
                        .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text(self.favoriteVm.address)
                            .font(Font.custom("Arial", size: 11))
                            .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                        
                        Text(self.favoriteVm.cuisines)
                            .font(Font.custom("Arial", size: 11))
                            .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                    }
                    
                }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    ZStack {
                        Text(self.randomScore)
                            .font(Font.custom("Arial", fixedSize: 17))
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }.frame(width: 50, height: 25, alignment: .center)
                    .background(self.getScoreColor())
                    .cornerRadius(6)
                    
                    Spacer()
                    
                    Image(systemName: "bookmark.fill")
                        .foregroundColor(Color(hex: "#4CBEC7"))
                    
                }.padding(EdgeInsets(top: 10, leading: 0, bottom: 12, trailing: 8))
            }
        }.frame(height: 100)
    }
    
    private func getScoreColor() -> Color {
        if Double(self.randomScore)! <= 2 {
            return Color(hex: "#E9ADA4")
        } else if Double(self.randomScore)! <= 3.5 {
            return Color(hex: "#FFCC29")
        } else {
            return Color.blue
        }
    }
}

struct FavoriteCell_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCell(favoriteVm: FavoriteVM(restaurant: Restaurant(name: "Zalad", address: "Park Avenue 982", time: "08:00 - 17:00", cuisines: "Snacks, Healthy", averageCost: "$5 - $20", phone: "(+61) 2 3872 8392", imageName: "placeholder_food_1")))
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
