//
//  LargeCardViewModel.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import Foundation



class LargeCardViewModel {
    
    var largeCardsList : [LargeCard]
    
    
    init() {
        largeCardsList = [
        LargeCard(image: "domeHouse", title: "Unique Stays", subTitle: "Spaces that are more than just a place to Sleep"),
        LargeCard(image: "circusMan", title: "Online Experiences", subTitle: "Unique Activities we can do together, led by a world of hosts."),
        LargeCard(image: "woodHouse", title: "Entire Homes", subTitle: "Comfortable private places, with room for friends or family")
        ]
    }
    
}
