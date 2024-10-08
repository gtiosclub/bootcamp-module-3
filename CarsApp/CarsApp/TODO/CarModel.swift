//
//  CarModel.swift
//  CarsApp
//
//  Created by Abdulaziz Albahar on 1/15/24.
//

import Foundation

/*
 TODO: PART 2
    The app can store general information about the car brands. However, a single car brand consists of many different cars. Newer models release every year and our app must be able to seamlessly welcome them - assume there’s an API from which this data comes from.
    Hence, we need you to create a CarModel struct that serves as a representation of a car model. We must store the:
        - brand of the car mode (HINT: can’t be a String, Int, Double, etc. You already built a type for this. Do you know what that is?)
        - a model ID (String), this is already written for you as 'id'.
        - model name
        - top speed (Int)
        - color (String)
        - fuel capacity (Int)
 
    Think about why we decide to use a Struct instead of a Class, perhaps it’s because the data never changes?
 */

/*
 TODO: Written question
    Why did we decide to use a Struct instead of a Class to represent a car model?
 
    We use a struct instead of a class because structs are value types, meaning they are copied
    when passed around, ensuring immutability by default. This is ideal for representing car
    models since their attributes like top speed, model name, and fuel capacity generally do
    not change once set. Structs also offer better performance as they are stored on the stack,
    making them more efficient when managing simple, immutable data. Additionally, car models
    don't need inheritance or reference semantics, which makes structs the better fit for this
    use case.
 */


struct CarModel: Identifiable, Hashable {
    
    let id: String // DO NOT EDIT THIS. This is the model id, and is used by the UI.
    
    // TODO: complete the struct's implementation
    let brand: CarBrand
    let modelName: String
    let topSpeed: Int
    let color: String
    let fuelCapacity: Int
    
    // TODO: These are functions used by the UI to display the model's data, right now they return default values. Fix it such that it returns the correct value.
    
    func getBrandYear() -> String {
        return brand.yearFounded
    }
       
    func getBrandFact() -> String {
        return brand.fact
    }
       
    func getBrandName() -> String {
        return brand.brandName
    }
       
    func getModelID() -> String {
        return id
    }
       
    func getModelName() -> String {
        return modelName
    }
       
    func getTopSpeed() -> Int {
        return topSpeed
    }
       
    func getColor() -> String {
        return color
    }
       
    func getFuel() -> Int {
        return fuelCapacity
    }
}


