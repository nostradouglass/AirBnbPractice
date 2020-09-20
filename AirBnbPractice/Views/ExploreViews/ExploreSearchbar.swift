//
//  ExploreSearchbar.swift
//  AirBnbPractice
//
//  Created by Kelly Douglass on 9/19/20.
//  Copyright © 2020 Kelly Douglass. All rights reserved.
//

import SwiftUI

struct ExploreSearchbar: View {
    
    @State private var showSearchPopUp = false
    
    var body: some View {
        
        Group {
            ZStack {
                if showSearchPopUp == false {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 350, height: 50)
                        .cornerRadius(30)
                    
                    VStack {
                        HStack {
                            Image(systemName: "arrow.left")
                            Text(" Add a location")
                            Spacer()
                            Text("Add dates")
                            Spacer()
                        }
                    }.padding(.horizontal, 50)
                } else {
                    Group {
                        
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        
                    VStack {
                        HStack {
                            Button(action: {
                                self.showSearchPopUp = false
                            }) {
                                Image(systemName: "xmark").padding(.leading)
                                .padding(.vertical)
                            }.buttonStyle(PlainButtonStyle())
                            
                            Spacer()
                         Text("Places to Stay")
                            Spacer()
                        }
                        ZStack {
                           
                            Rectangle()
                                .foregroundColor(Color.white)
                                .frame(width: 380, height: 100)
                                .cornerRadius(10)
                                .shadow(color: .gray, radius: 5, x: 3, y: 3)
                                
                            Divider()
                            VStack {
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                    Text("Where are you going?")
                                }.padding(.bottom, 10)
                                HStack {
                                    Image(systemName: "calendar")
                                    Text("Add dates")
                                    Spacer()
                                    Image(systemName: "person.2")
                                    Text("Add Guests")
                                }.padding(.horizontal, 60)
                            }
                        }
                        }
                    }.offset(y: -20)
                }
                
            }.onTapGesture {
                self.showSearchPopUp = true
            }
        }
        
    }
}

struct ExploreSearchbar_Previews: PreviewProvider {
    static var previews: some View {
        ExploreSearchbar()
    }
}
