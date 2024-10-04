//
//  CarBrand.swift
//  CarsApp
//
//  Created by Abdulaziz Albahar on 1/15/24.
//

import Foundation


/*
 TODO: PART 1
    You are given an incomplete car purchasing app, and an unimplemented CarBrand enum. The app currently uses a global dictionary (carFacts) as a way of storing the car brands and their facts. However, given the nature of dictionaries and String keys. Small mistakes in our code can go unnoticed. We would like to use enums to organize these car facts, make our car facts more maintainable, and have a less error-prone system. The car facts stored in this enum will be presented alongside every car model.
 
            (1) Implement this enum with all the different car brands (cases) and their properties (variables). Don't forget to include the brand name as a property.
            (2) Implement changes within all functions that have a TODO comment.
            (3) Test your implementation with very basic test cases.
 */
enum CarBrand: String, CaseIterable {
    case none, Mercedes, BMW, Toyota, Lamborghini, Porsche, Ford
    
    var carName: String {
        return self.rawValue
    }
    
    var year: String {
        return carFacts[self.rawValue]?["year_founded"] as? String ?? "no year"
    }
    
    var fact: String {
        return carFacts[self.rawValue]?["fact"] as? String ?? "No facts"
    }
}




// USE THIS DICTIONARY FOR THE DATA IN YOUR ENUM IMPLEMENTATION:
let carFacts: [String : [String: Any]] = [
    "Mercedes": ["year_founded" : "1926", "fact" : "Mercedes Benz invented the first gasoline-powered automobile."],
    "BMW": ["year_founded" : "1916", "fact" : "BMW originally built plane engines."],
    "Toyota": ["year_founded" : "1937", "fact" : "Toyota is still a family business."],
    "Lamborghini": ["year_founded" : "1963", "fact" : "Both the Dubai and Italian Police use Lamborghini’s."],
    "Porsche": ["year_founded" : "1948", "fact" : "Porsche was an early adopter of airbag safety systems."],
    "Ford": ["year_founded" : "1903", "fact" : "Henry Ford and Thomas Edison were lifelong friends."],
]
