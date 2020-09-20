//
//  LocationViewModel.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/20/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import Foundation


class LocationViewModel: Identifiable {
    
   
    var locations : [Location] = []
    let placesVM = PlacesViewModel()
  
    init() {
        locations = [
            Location(locationName: "Hawaii", places: placesVM.places),
            Location(locationName: "Hawaii", places: placesVM.places),
            Location(locationName: "Hawaii", places: placesVM.places)
        ]
        
    }
    
    
    
}


class PlacesViewModel {

    var places = [
            Places(images: ["123", "456"], title: "Romantic & Relaxing Poolhouse in Waikoloa Village", price: 99, rating: 4.89, hostName: "Sarah", numGuests: 2, numBedRooms: 1, numBeds: 2, numBath: 1, amenities: ["Air conditioning",
            "Kitchen",
           "Wifi",
            "Free parking on premises",
            "Pool",
            "Iron",
            "Cable TV",
            "Laptop-friendly workspace",
            "Hair dryer",
            "TV"]
                , reviews: [PlaceReview(reviewerName: "Dave", date: Date(), reviewerImage: "sdfs", review: "Great", reviewScore: 4.5)]),
            Places(images: ["123", "456"], title: "Romantic & Relaxing Poolhouse in Waikoloa Village", price: 99, rating: 4.89, hostName: "Sarah", numGuests: 2, numBedRooms: 1, numBeds: 2, numBath: 1, amenities: ["Air conditioning",
             "Kitchen",
            "Wifi",
             "Free parking on premises",
             "Pool",
             "Iron",
             "Cable TV",
             "Laptop-friendly workspace",
             "Hair dryer",
             "TV"]
                 , reviews: [PlaceReview(reviewerName: "Dave", date: Date(), reviewerImage: "sdfs", review: "Great", reviewScore: 4.5)])
        ]
    }



