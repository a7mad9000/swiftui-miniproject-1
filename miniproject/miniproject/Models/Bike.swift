//
//  Bike.swift
//  miniproject
//
//  Created by ahmad alburaimi on 03/01/2021.
//

import Foundation
struct Bike : Identifiable{
    let bImage:String
    let pricePerHour: Double
    
    let id :Int
}

var bikes=[
    Bike(bImage: "bicycle childrens", pricePerHour: 0.5, id: 1),
    Bike(bImage: "bicycle green", pricePerHour: 0.75, id: 2),
    Bike(bImage: "bicycle blue", pricePerHour: 1.0, id: 3),
    Bike(bImage: "bike black", pricePerHour: 2.0, id: 4),
    Bike(bImage: "bike blue", pricePerHour: 2.0, id: 5),
    Bike(bImage: "bike orange", pricePerHour: 3.5, id: 6),
    Bike(bImage: "bike red", pricePerHour: 3.5, id: 7),
    Bike(bImage: "scooter", pricePerHour: 3.0, id: 8)
]
