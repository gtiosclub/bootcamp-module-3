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

    }
    
    
    /*
        TODO: implement this function
        This function gets called by the UI whenever the user wants to ADD/REMOVE this car from their favourites list. Change the state of the favourites array to accomplish this.
     */
    func toggleFavourite(car: CarModel) {
        
 
    }
    
    /*
        TODO: implement this function
        This function gets called by the UI whenever the user wants to view the amount of cars available from a certain model.
     */
    func getCarAvailability(car: CarModel) -> Int {
        

    }
    
    /*
        TODO: implement this function
        Set the displayedCars to all the available cars excluding any car that IS NOT of the given brand. In essence, this is the filtering functionality our app uses to display cars of a certain brand.
        NOTE: make sure you handle the case where it's 'none', as it implies that we don't want a filter.
     */
    func filterCarsBy(brand: CarBrand) {

    }
    
    
    
}
