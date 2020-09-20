//
//  LargeCardScrollView.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct LargeCardScrollView: View {
    
    var cards = LargeCardViewModel()
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
            LargeCardView(card: cards.largeCardsList[0])
            LargeCardView(card: cards.largeCardsList[1])
            LargeCardView(card: cards.largeCardsList[2])
                }
            .frame(height: 400)
        }
    }
}

struct LargeCardScrollView_Previews: PreviewProvider {
    static var previews: some View {
        LargeCardScrollView()
    }
}
