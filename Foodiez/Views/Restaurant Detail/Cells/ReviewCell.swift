//
//  ReviewCell.swift
//  Foodiez
//
//  Created by Marchell on 27/12/20.
//

import SwiftUI

struct ReviewCell: View {
    
    @ObservedObject private var reviewVM: ReviewVM
    
    @State private var isLike: Bool = false
    
    init(review: Review) {
        self.reviewVM = ReviewVM(review: review)
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(self.reviewVM.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 65, alignment: .center)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(self.reviewVM.name)
                        .font(Font.custom("Arial", size: 20))
                        .fontWeight(.semibold)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                    
                    Text("\(self.reviewVM.reviewCount) Reviews, \(self.reviewVM.followerCount) Followers")
                        .font(Font.custom("Arial", size: 14))
                        .foregroundColor(Color(hex: Configs.CLR_GRAY))
                }
                
                Spacer()
            }
            
            HStack {
                HStack(alignment: .center) {
                    Image(systemName: self.reviewVM.rating < 1 ? "star" : "star.fill")
                        .foregroundColor(Color(hex: Configs.BG_PRIMARY))
                    Image(systemName: self.reviewVM.rating < 2 ? "star" : "star.fill")
                        .foregroundColor(Color(hex: Configs.BG_PRIMARY))
                    Image(systemName: self.reviewVM.rating < 3 ? "star" : "star.fill")
                        .foregroundColor(Color(hex: Configs.BG_PRIMARY))
                    Image(systemName: self.reviewVM.rating < 4 ? "star" : "star.fill")
                        .foregroundColor(Color(hex: Configs.BG_PRIMARY))
                    Image(systemName: self.reviewVM.rating < 5 ? "star" : "star.fill")
                        .foregroundColor(Color(hex: Configs.BG_PRIMARY))
                    
                    Text("\(self.reviewVM.rating).0")
                        .font(Font.custom("Arial", size: 15))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: Configs.BG_PRIMARY))
                }
                
                Spacer()
                
                HStack {
                    Image(systemName: self.isLike ? "hand.thumbsup.fill" : "hand.thumbsup")
                        .foregroundColor(Color(hex: Configs.BG_PRIMARY))
                        .frame(width: 30)
                        .onTapGesture {
                            self.isLike.toggle()
                        }
                    
                    Image(systemName: "bubble.right")
                        .foregroundColor(Color(hex: Configs.CLR_GRAY))
                        .frame(width: 40)
                }
            }.padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0))
            
            Text(self.reviewVM.reviewDesc)
                .font(Font.custom("Arial", size: 18))
                .foregroundColor(Color(hex: Configs.CLR_GRAY))
                .lineLimit(4)
                //.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
            
            Color(hex: Configs.CLR_LIGHT_GRAY)
                .frame(height: 2)
        }
    }
}

struct ReviewCell_Previews: PreviewProvider {
    static var previews: some View {
        ReviewCell(review: Review(name: "Brandon Cohen", review: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo", rating: 4, reviewCount: 54, followerCount: 98, imageName: "placeholder_food_2"))
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
