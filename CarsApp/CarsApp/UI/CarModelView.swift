//
//  CarModelView.swift
//  CarsApp
//
//  Created by Abdulaziz Albahar on 1/15/24.
//

import SwiftUI

struct CarModelView: View {
    let carModel: CarModel
    var catalog: CarCatalog
    
    @ObservedObject var dummyState: DummyState
    
    var body: some View {
        VStack {
            Text(carModel.getModelID() + " - " + carModel.getBrandName() + " " + carModel.getModelName())
                .bold()
                .font(.largeTitle)
            
            Spacer()
            
            Text(carModel.getColor())
                .padding(.bottom)
            Text("\(carModel.getTopSpeed()) km/h")
                .padding(.bottom)
            Text("est. " + carModel.getBrandYear())
                .padding(.bottom)
            Text("Capacity: \(carModel.getFuel())")
                .padding(.bottom)
            Text("Stock: \(catalog.getCarAvailability(car: carModel))")
                .padding(.bottom)
            Button(catalog.favourites.contains(where: {$0 == carModel}) ? "Unfavourite" : "Favourite", action: {
                print(catalog.favourites)
                catalog.toggleFavourite(car: carModel)
                refresh()
            })

            
            Spacer()
            
            
        }
        .multilineTextAlignment(.center)
        .font(.title2)
        .frame(maxHeight: .infinity, alignment: .top)

    }
    
    func refresh() {
        dummyState.dummy.toggle()
    }
}

/*
#Preview {
    @ObservedObject var dummy = DummyState()
    
    return CarModelView(carModel: .init(id: "M497"), catalog: .init(), dummyState: dummy)
}
*/
