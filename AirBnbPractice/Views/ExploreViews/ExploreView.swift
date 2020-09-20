//
//  ExploreView.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ScrollView {
        ZStack {
            
            ExploreHero()
            VStack {
                ExploreSearchbar().padding(.top)
                
                VStack(alignment: .center) {
                    Text("Give your Routine a new Home")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Text("Settle in somewhere new. Discover nearby stays to live, work, or just relax")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                
            }
           
            VStack {
                
                Text("Top spots for a change of Scenery")
                    .font(.largeTitle).padding(.horizontal)
                
                ExploreSmallHorzListView().padding(.top, 100)
                
                LargeCardScrollView().padding(.top, 100)
                    
                
            }.padding(.vertical, 470)
            
            
            }
            
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
