//
//  OnboardingPageView.swift
//  Foodiez
//
//  Created by Marchell on 22/12/20.
//

import SwiftUI

struct OnboardingPageView: View {
    
    let title: String
    let desc: String
    
    var body: some View {
        ZStack {
            
            Color(hex: Configs.BG_PRIMARY).ignoresSafeArea() 
            
            VStack {
                Image("ic_ob_magnifier")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fit)
                
                Text(self.title)
                    .fontWeight(.bold)
                    .font(Font.custom("Arial", size: 30))
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .lineLimit(1)
                
                Text(self.desc)
                    .font(Font.custom("Arial", size: 20))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
                    .lineLimit(2)

            }
        }
    }
}

struct OnboardingPageView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPageView(title: "Quick Search", desc: "Set your location to start exploring restaurants around you")
    }
}
