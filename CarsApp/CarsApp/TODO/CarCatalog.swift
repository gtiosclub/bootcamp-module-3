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

    var carsAvailable: [CarModel : Int]// A mapping of the car models to the amount of these models available.
    var displayedCars: [CarModel]
    var favourites: [CarModel]
/*
    var numOfMercedes: Int = 2
    var numOfBMW: Int = 6
    var numOfToyota: Int = 4
    var numOfLamborghini: Int = 7
    var numOfPorsche: Int = 4
    var numOfFord: Int = 5
 */
    var numOfCar: Int = 8
    
    /*
     TODO: write an initializer that fetches all the car models. For the purposes of this assignment, initialize carsAvailable to a default array of 5-6 car models of your choice, with an arbitrary number representing their amount. Make sure the displayedCars are initialized with all the cars in carsAvailable. Upon launch, the user should have no favourites (empty).
     NOTE: The ids of the cars you provide must be unique, otherwise the app will crash.
    */
    init() {
        carsAvailable = [
            CarModel(id: "M121", brand: CarBrand.Mercedes, modelName: "modelX", topSpeed: 100, color: "Green", fuelCapacity: 20, favorited: false): numOfCar,
            CarModel(id: "M122", brand: CarBrand.BMW, modelName: "modelY", topSpeed: 100, color: "Black", fuelCapacity: 40, favorited: false): numOfCar,
            CarModel(id: "M123", brand: CarBrand.Toyota, modelName: "modelZ", topSpeed: 100, color: "Red", fuelCapacity: 50, favorited: false): numOfCar,
            CarModel(id: "M124", brand: CarBrand.Lamborghini, modelName: "modelA", topSpeed: 100, color: "White", fuelCapacity: 25, favorited: false): numOfCar,
            CarModel(id: "M125", brand: CarBrand.Porsche, modelName: "modelB", topSpeed: 100, color: "Cyan", fuelCapacity: 35, favorited: false): numOfCar,
            CarModel(id: "M126", brand: CarBrand.Ford, modelName: "modelC", topSpeed: 100, color: "Purple", fuelCapacity: 65, favorited: false): numOfCar
        ]
        
        displayedCars = [
            CarModel(id: "M121", brand: CarBrand.Mercedes, modelName: "modelX", topSpeed: 100, color: "Green", fuelCapacity: 20, favorited: false),
            CarModel(id: "M122", brand: CarBrand.BMW, modelName: "modelY", topSpeed: 100, color: "Black", fuelCapacity: 40, favorited: false),
            CarModel(id: "M123", brand: CarBrand.Toyota, modelName: "modelZ", topSpeed: 100, color: "Red", fuelCapacity: 50, favorited: false),
            CarModel(id: "M124", brand: CarBrand.Lamborghini, modelName: "modelA", topSpeed: 100, color: "White", fuelCapacity: 25, favorited: false),
            CarModel(id: "M125", brand: CarBrand.Porsche, modelName: "modelB", topSpeed: 100, color: "Cyan", fuelCapacity: 35, favorited: false),
            CarModel(id: "M126", brand: CarBrand.Ford, modelName: "modelC", topSpeed: 100, color: "Purple", fuelCapacity: 65, favorited: false)
        ]
        favourites = []
    }
    
    
    /*
        TODO: implement this function
        This function gets called by the UI whenever the user wants to ADD/REMOVE this car from their favourites list. Change the state of the favourites array to accomplish this.
     */
    func toggleFavourite(car: CarModel) {
        //var addOrDelete
        
        if(car.favorited == false){
            favourites.append(car)
        }
        if(car.favorited == true){
            favourites.remove(at: car.hashValue)
        }
    }
    
    /*
        TODO: implement this functio
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
        if (brand.brand_Name == "none") {
            return
        } else {
            displayedCars.removeAll { CarModel in
                CarModel.getBrandName() == brand.brand_Name
            }
        }
    }
}
