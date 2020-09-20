//
//  Locations.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/20/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import Foundation



struct Location: Identifiable {
    
    let id = UUID()
    let locationName: String
    let places : [Places]
    
}


struct Places {
    
    let images : [String]
    let title: String
    let price: Int
    let rating: Double
    let hostName: String
    let numGuests: Int
    let numBedRooms: Int
    let numBeds: Int
    let numBath: Int
    let amenities: [String]
    let reviews: [PlaceReview]
    
}


