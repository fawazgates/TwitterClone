//
//  MainTabView.swift
//  twitterclone
//
//  Created by User on 24/02/24.
//

import Foundation
import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                }.tag(2)
            MessagesView()
                .tabItem {
                    Image(systemName: "envelope")
                }.tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
