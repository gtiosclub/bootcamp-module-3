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

    var carsAvailable: [CarModel : Int] // A mapping of the car models to the amount of these models available.
    var displayedCars: [CarModel]
    var favourites: [CarModel]
    
    /*
     TODO: write an initializer that fetches all the car models. For the purposes of this assignment, initialize carsAvailable to a default array of 5-6 car models of your choice, with an arbitrary number representing their amount. Make sure the displayedCars are initialized with all the cars in carsAvailable. Upon launch, the user should have no favourites (empty).
     NOTE: The ids of the cars you provide must be unique, otherwise the app will crash.
    */
    init() {
        let car1 = CarModel(id: "M001", brand: .Mercedes, modelName: "G-Wagon", topSpeed: 220,
            color: "Black", fuelCapacity: 100)
        let car2 = CarModel(id: "B001", brand: .BMW, modelName: "X5", topSpeed: 240, color: "White", fuelCapacity: 95)
        let car3 = CarModel(id: "T001", brand: .Toyota, modelName: "Corolla", topSpeed: 180, color: "Silver", fuelCapacity: 55)
        let car4 = CarModel(id: "L001", brand: .Lamborghini, modelName: "Aventador", topSpeed: 350, color: "Yellow", fuelCapacity: 85)
        let car5 = CarModel(id: "P001", brand: .Porsche, modelName: "911", topSpeed: 330, color: "Red", fuelCapacity: 90)
        
        carsAvailable = [car1: 5, car2: 3, car3: 10, car4: 2, car5: 4]
        
        displayedCars = Array(carsAvailable.keys)
        
        favourites = []
    }
    
    
    /*
        TODO: implement this function
        This function gets called by the UI whenever the user wants to ADD/REMOVE this car from their favourites list. Change the state of the favourites array to accomplish this.
     */
    func toggleFavourite(car: CarModel) {
        if let index = favourites.firstIndex(of: car) {
            favourites.remove(at: index)
        } else {
            favourites.append(car)
        }
    }
    
    /*
        TODO: implement this function
        This function gets called by the UI whenever the user wants to view the amount of cars available from a certain model.
     */
    func getCarAvailability(car: CarModel) -> Int {
        return carsAvailable[car] ?? 0
    }
    
    /*
        TODO: implement this function
        Set the displayedCars to all the available cars excluding any car that IS NOT of the given brand. In essence, this is the filtering functionality our app uses to display cars of a certain brand.
        NOTE: make sure you handle the case where it's 'none', as it implies that we don't want a filter.
     */
    func filterCarsBy(brand: CarBrand) {
        if brand == .none {
            displayedCars = Array(carsAvailable.keys)
        } else {
            displayedCars = carsAvailable.keys.filter { $0.brand == brand }
        }
    }
    
    
    
}
