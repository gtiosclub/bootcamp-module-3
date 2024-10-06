//
//  CarCatalog.swift
//  CarsApp
//
//  Created by Abdulaziz Albahar on 1/15/24.
//

import Foundation

/*
 TODO: PART 3
     You are given a class called CarCatalog, with certain variables such as carsAvailable (mapping of CarModel to amount available), favourites (list of CarModels), etc.
     Implement the empty functions throughout this class - favourite(CarModel), getCarAvailability(CarModel), getAvailableCars(), filterCarsBy(brand).
     Some helper functions will already be given. Implement the class initializer to initialize your variables.
 */

class CarCatalog {

    var carsAvailable: [CarModel: Int] // A mapping of the car models to the amount of these models available.
    var displayedCars: [CarModel] // Cars that are currently displayed to the user
    var favourites: [CarModel] // A list of favorite cars
    
    /*
     TODO: write an initializer that fetches all the car models. For the purposes of this assignment, initialize carsAvailable to a default array of 5-6 car models of your choice, with an arbitrary number representing their amount. Make sure the displayedCars are initialized with all the cars in carsAvailable. Upon launch, the user should have no favourites (empty).
     NOTE: The ids of the cars you provide must be unique, otherwise the app will crash.
    */
    init() {
        let car1 = CarModel(id: "1", brand: CarBrand(rawValue: "Mercedes") ?? .none, name: "G-Wagon", topSpeed: 120, color: "Red", fuelCapacity: 100)
        let car2 = CarModel(id: "2", brand: CarBrand(rawValue: "BMW") ?? .none, name: "X5", topSpeed: 140, color: "Black", fuelCapacity: 90)
        let car3 = CarModel(id: "3", brand: CarBrand(rawValue: "Toyota") ?? .none, name: "Corolla", topSpeed: 110, color: "White", fuelCapacity: 50)
        let car4 = CarModel(id: "4", brand: CarBrand(rawValue: "Ford") ?? .none, name: "Mustang", topSpeed: 150, color: "Blue", fuelCapacity: 80)
        
        carsAvailable = [car1: 10, car2: 8, car3: 12, car4: 5]
        displayedCars = Array(carsAvailable.keys)
        favourites = [] 
    }
    
    /*
        TODO: implement this function
        This function gets called by the UI whenever the user wants to ADD/REMOVE this car from their favourites list. Change the state of the favourites array to accomplish this.
     */
    func toggleFavourite(car: CarModel) {
        if let index = favourites.firstIndex(of: car) {
            favourites.remove(at: index) // Remove if it's already a favourite
        } else {
            favourites.append(car) // Add to favourites if not already in
        }
    }
    
    /*
        TODO: implement this function
        This function gets called by the UI whenever the user wants to view the amount of cars available from a certain model.
     */
    func getCarAvailability(car: CarModel) -> Int {
        return carsAvailable[car] ?? 0 // Return the availability, default to 0 if not found
    }
    
    /*
        TODO: implement this function
        Set the displayedCars to all the available cars excluding any car that IS NOT of the given brand. In essence, this is the filtering functionality our app uses to display cars of a certain brand.
        NOTE: make sure you handle the case where it's 'none', as it implies that we don't want a filter.
     */
    func filterCarsBy(brand: CarBrand) {
        if brand == .none {
            displayedCars = Array(carsAvailable.keys) // No filter, show all cars
        } else {
            displayedCars = carsAvailable.keys.filter { $0.brand == brand }
        }
    }
}
