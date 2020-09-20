//
//  SavedView.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct SavedView: View {
    
    var locationVm = LocationViewModel()
    
    var body: some View {
        
        NavigationView {
            
            List(locationVm.locations) { location in
              
                SavedCardView()
                    
            }
            .padding(.leading)
            .navigationBarTitle("Saved")
        }
        
    }
}

struct SavedView_Previews: PreviewProvider {
    static var previews: some View {
        SavedView()
    }
}
