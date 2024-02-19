//
//  ContentView.swift
//  CarsApp
//
//  Created by Abdulaziz Albahar on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CarCatalogView()
    }
}

#Preview {
    ContentView()
}


class DummyState: ObservableObject {
    @Published var dummy: Bool = true
}


struct FilterMenu: View {
    var catalog: CarCatalog
    
    @ObservedObject var dummyState: DummyState
    var body: some View {
        Menu("Filter") {
            ForEach(CarBrand.allCases, id: \.self) { brand in
                Button(brand.rawValue, action: {
                    catalog.filterCarsBy(brand: brand)
                    refresh()
                })
            }
        }
    }
    
    func refresh() {
        dummyState.dummy.toggle()
    }
}
