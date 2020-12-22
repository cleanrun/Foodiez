//
//  HomeView.swift
//  Foodiez
//
//  Created by Marchell on 23/12/20.
//

import SwiftUI

struct HomeView: View {
    
    @State private var selectedTab = 1
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        TabView(selection: self.$selectedTab) {
            HomeTabView()
                .tabItem {
                    self.selectedTab == 1 ? Image(systemName: "house.fill") : Image(systemName: "house")
                }.tag(1)
            
            DiscoverTabView()
                .tabItem {
                    self.selectedTab == 2 ? Image(systemName: "location.north.fill") : Image(systemName: "location.north")
                }.tag(2)
            
            FavoriteTabView()
                .tabItem {
                    self.selectedTab == 3 ? Image(systemName: "heart.fill") : Image(systemName: "heart")
                }.tag(3)
            
            AccountTabView()
                .tabItem {
                    self.selectedTab == 4 ? Image(systemName: "person.fill") : Image(systemName: "person")
                }.tag(4)
        }.tabViewStyle(DefaultTabViewStyle())
        .accentColor(Color(hex: Configs.BG_PRIMARY))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
