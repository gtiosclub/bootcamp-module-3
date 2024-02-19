//
//  CarCatalogView.swift
//  CarsApp
//
//  Created by Abdulaziz Albahar on 1/15/24.
//

import SwiftUI

struct CarCatalogView: View {
    var catalog = CarCatalog()
    @State var navPath: NavigationPath = .init()
    
    @ObservedObject var dummyState: DummyState = .init()
    
    var body: some View {
        
        NavigationStack(path: $navPath) {
            VStack {
                List {
                    ForEach(Array(catalog.displayedCars), id: \.self.id) { model in
        
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
            .navigationTitle("Catalog")
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing, content: {
                    Button("Favourites") {
                        navPath.append(catalog.favourites) // append favourites array
                    }
                })
                
                ToolbarItem(placement: .topBarTrailing, content: {
                    FilterMenu(catalog: catalog, dummyState: dummyState)
                })
            })
            .navigationDestination(for: [CarModel].self, destination: { favs in
                FavouritesView(catalog: catalog, navPath: $navPath, dummyState: dummyState)
            })
            .navigationDestination(for: CarModel.self, destination: { model in
                CarModelView(carModel: model, catalog: catalog, dummyState: dummyState)
            })
        }

        
    }
}

#Preview {
    return CarCatalogView()
}
