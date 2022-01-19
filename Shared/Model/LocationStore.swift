//
//  LocationStore.swift
//  TrkrMultiPlatform
//
//  Created by Ben Freeman on 2022-01-19.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [Location]
    
    init() {
        
        let url = Bundle.main.url(forResource: "Locations", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        places.sort(by: {
            $0.name < $1.name
        })
    }
}


var testStore = LocationStore()
