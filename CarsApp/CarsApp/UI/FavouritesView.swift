//
//  FavouritesView.swift
//  CarsApp
//
//  Created by Abdulaziz Albahar on 1/15/24.
//

import SwiftUI

struct FavouritesView: View {
    var catalog: CarCatalog
    @Binding var navPath: NavigationPath
    
    @ObservedObject var dummyState: DummyState
    
    var body: some View {
        VStack {
            List {
                ForEach(catalog.favourites, id: \.self.id) { model in
                    
                    HStack {
                        
                        Text(model.getModelID() + " - " + model.getBrandName() + " " + model.getModelName())
                        
                        
                        Button("", systemImage: "arrow.right", action: {
                            navPath.append(model)
                        })
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    
                }
            }
            
        }
        .navigationTitle("Favourites")
        .navigationDestination(for: CarModel.self, destination: { model in
            CarModelView(carModel: model, catalog: catalog, dummyState: dummyState)
        })

    }
    
    func refresh() {
        dummyState.dummy.toggle()
    }
}
