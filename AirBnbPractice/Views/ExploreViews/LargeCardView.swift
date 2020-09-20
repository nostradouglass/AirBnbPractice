//
//  LargeCardView.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct LargeCardView: View {
    
    var card : LargeCard
    
    var body: some View {
        
        ZStack {
            Rectangle()
            .foregroundColor(Color.white)
            .frame(width: 370, height: 370)
            //.cornerRadius(30)
            
            VStack {
                Image(card.image)
                    .resizable()
                    .frame(width: 370, height: 250)
                    .aspectRatio(contentMode: .fill)
                    .offset(x: 0, y: -20)
                
                VStack(alignment: .leading) {
                Text("Unique stays")
                    .font(.title)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 10)
                Text("Spaces that are more than just a place to Sleep")
                    .padding(.horizontal, 30)
                    .padding(.bottom, 10)
                }
            }
            
            
        }.cornerRadius(30).shadow(color: Color.gray, radius: 2, x: 5, y: 5)
            .frame(width: 400, height: 430)
        
    }
}

struct LargeCardView_Previews: PreviewProvider {
    static var previews: some View {
        LargeCardView(card: LargeCardViewModel().largeCardsList[0])
    }
}
