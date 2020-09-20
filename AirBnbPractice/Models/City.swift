//
//  City.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import Foundation


struct City: Identifiable {
    
    let id = UUID()
    let name: String
    let price: Int
    let image: String
    
}
