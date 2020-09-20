//
//  ContentView.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection = 0
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            ExploreView().tabItem {
                Image(systemName: "magnifyingglass")
                Text("Explore")
            }.tag(1)
            SavedView().tabItem {
                Image(systemName: "heart")
                Text("Saved")
            }.tag(2)
            TipsView().tabItem {
                Image(systemName: "house")
                Text("Tips")
            }.tag(3)
            InboxView().tabItem {
                Image(systemName: "message")
                Text("Inbox")
            }.tag(4)
            ProfileView().tabItem {
                Image(systemName: "person.circle")
                Text("Profile")
            }.tag(5)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
