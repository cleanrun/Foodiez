//
//  OnboardingParentView.swift
//  Foodiez
//
//  Created by Marchell on 22/12/20.
//

import SwiftUI

struct OnboardingParentView: View {
    var body: some View {
        ZStack {
            
            Color(hex: Configs.BG_PRIMARY).ignoresSafeArea()
            
            VStack {
                TabView {
                    OnboardingPageView(title: "Quick Search", desc: "Set your location to start exploring restaurants around you")
                    OnboardingPageView(title: "Variety of food", desc: "Set your location to start exploring restaurants around you")
                    OnboardingPageView(title: "Search for a place", desc: "Set your location to start exploring restaurants around you")
                }.tabViewStyle(PageTabViewStyle())
                
                Button("Login") {
                    self.goToLogin()
                }.buttonStyle(WhiteRectangleButtonStyle())
                .frame(height: 50, alignment: .center)
                .padding(EdgeInsets(top: 10, leading: 20, bottom: 90, trailing: 20))
            }
        }
    }
    
    
}

struct OnboardingParentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingParentView()
    }
}
