//
//  RestaurantLocation.swift
//  Little-Lemon-Reservation-App
//
//  Created by TanjilaNur-00115 on 16/8/23.
//

import Foundation

struct RestaurantLocation:Hashable {
  let city:String
  let neighborhood:String
  let phoneNumber:String
  
  init(city:String = "",
       neighborhood:String = "",
       phoneNumber:String = "") {
    self.city = city
    self.neighborhood = neighborhood
    self.phoneNumber = phoneNumber
  }
}



