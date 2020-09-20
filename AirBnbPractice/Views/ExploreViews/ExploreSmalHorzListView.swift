//
//  ExploreSmalHorzListView.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ExploreSmallHorzListView: View {
    
    var dummyArray1 : [City] = [
             City(name: "Broken Bow", price: 275, image: "brokenBow"),
             City(name: "Eureka Springs", price: 149, image: "eurekaSprings"),
             City(name: "Branson", price: 150, image: "branson")
         ]
 
        var dummyArray2 : [City] = [
        City(name: "Bella Vista", price: 114, image: "bellaVista"),
            City(name: "Eufaula", price: 231, image: "eufaula"),
            City(name: "Medicine park", price: 153, image: "medicinePark")
        ]
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack(spacing: 60) {
                    CityGroupView(cities: dummyArray1)
                    CityGroupView(cities: dummyArray2)
                    
                    }.padding()
            }.frame(height: 100)
            
        }
        
    }
}


struct CityGroupView: View {
   
    var cities: [City]
   
    var body: some View {
        
        VStack {
            SingleCityInfoView(cities: cities)
                .frame(width: 250, height: 300)
        }
    }
}

struct SingleCityInfoView: View {
    
    var cities : [City]
    
    init(cities: [City]) {
        self.cities = cities
        if #available(iOS 14.0, *) {
            // iOS 14 doesn't have extra separators below the list by default.
        } else {
            // To remove only extra separators below the list:
            UITableView.appearance().tableFooterView = UIView()
        }

        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
           ForEach(cities) { city in
            HStack {
                    Image("\(city.image)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                        .cornerRadius(20)
                
                    VStack(alignment: .leading) {
                        Text(city.name).font(.headline)
                        Text("$\(city.price)/night")
                    }
                }
        }
        }
        
    }
}


struct ExploreSmallHorzListView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreSmallHorzListView()
    }
}


