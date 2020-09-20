//
//  ExploreHero.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ExploreHero: View {
    var body: some View {

        VStack {
                VStack {
                Image("treehouse2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                }
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct ExploreHero_Previews: PreviewProvider {
    static var previews: some View {
        ExploreHero()
    }
}
