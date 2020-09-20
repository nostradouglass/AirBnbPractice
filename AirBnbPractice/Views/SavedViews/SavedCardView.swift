//
//  SavedCardView.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/20/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct SavedCardView: View {
    var body: some View {
        
        VStack {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                Image("Placeholder")
                    .resizable()
                    .frame(height: 250)
                    .aspectRatio(contentMode: .fill)
                    .clipped(antialiased: true)
                
                Group {
                    Text("Any time").padding(.top)
                    Text("Colorado Cabins")
                        .font(.title)
                    Text("7 stays")
                }.padding(.leading)
                Spacer()
            }
        }.padding(.vertical, 30)
        
        }
    }
}

struct SavedCardView_Previews: PreviewProvider {
    static var previews: some View {
        SavedCardView()
    }
}
