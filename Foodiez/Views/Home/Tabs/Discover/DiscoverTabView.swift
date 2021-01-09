//
//  DiscoverTabView.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import SwiftUI

struct DiscoverTabView: View {
    let grids = Discover.all()
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Text("Discover")
                .font(Font.custom("Arial", size: 30))
                .fontWeight(.bold)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 16, trailing: 0))
            
            VStack {
                LazyVGrid(columns: self.layout, spacing: 6) {
                    ForEach(self.grids, id: \.self) { item in
                        DiscoverCell(model: item, completion: {})
                    }
                }
                .padding(EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16))
                
                Spacer()
                
            }.background(Color(hex: Configs.CLR_LIGHT_GRAY))
                
        }
    }
}

struct DiscoverTabView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverTabView()
    }
}

struct DiscoverCell: View {
    
    var model: Discover
    
    var completion: () -> ()
    
    var body: some View {
        ZStack {
            Color.white
            
            VStack {
                Image(self.model.iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                
                Text(self.model.title)
                    .font(Font.custom("Arial", size: 15))
                    .fontWeight(.semibold)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                
                Text("\(self.model.placeCount) Place")
                    .font(Font.custom("Arial", size: 13))
                    .foregroundColor(Color(hex: Configs.CLR_GRAY))
            }
            .padding(16)
        }.frame(height: 180, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 6)
                    .stroke(lineWidth: 1.0)
                    .foregroundColor(Color(hex: Configs.CLR_GRAY_2))
                    .opacity(0.3))
        .cornerRadius(6)
        .shadow(radius: 8)
        .padding(EdgeInsets(top: 6, leading: 6, bottom: 6, trailing: 10))
        .onTapGesture {
            self.completion()
        }
    }
}
