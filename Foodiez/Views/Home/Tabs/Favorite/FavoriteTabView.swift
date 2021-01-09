//
//  FavoriteTabView.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import SwiftUI

struct FavoriteTabView: View {
    
    init() {
        UITableView.appearance().backgroundColor = UIColor(Color(hex: Configs.CLR_LIGHT_GRAY))
    }
    
    var body: some View {
        VStack {
            Text("Favorites")
                .font(Font.custom("Arial", size: 30))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            
            VStack {
                List {
                    
                }
            }
            
        }
    }
}

//struct FavoriteTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        FavoriteTabView()
//    }
//}

struct FavoriteCell: View {
    
    var body: some View {
        ZStack {
            Color.white
            
            HStack {
                Image("placeholder_food_1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80, alignment: .center)
                    .clipped()
                    .cornerRadius(8)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                
                VStack(alignment: .leading) {
                    Text("Good Thai")
                        .font(Font.custom("Arial", size: 20))
                        .fontWeight(.semibold)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                    
                    Text("11:30 AM to 11 PM")
                        .font(Font.custom("Arial", size: 10))
                        .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("20 Queen Street, NSW")
                            .font(Font.custom("Arial", size: 11))
                            .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                        
                        Text("Asian, Thai")
                            .font(Font.custom("Arial", size: 11))
                            .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                    }
                    
                }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                
                Spacer()
                
                VStack(alignment: .trailing) {
                    
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0))
            }
        }.frame(height: 100)
    }
}

struct FavoriteCell_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteCell()
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
