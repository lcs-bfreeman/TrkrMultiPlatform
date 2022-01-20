//
//  TrkrMultiPlatformApp.swift
//  Shared
//
//  Created by Ben Freeman on 2022-01-18.
//

import SwiftUI

@main
struct TrkrMultiPlatformApp: App {
    
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                
                
                NavigationView {
                    LocationList(store: store)
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                NavigationView {
                    WorldMap(store: store)
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Tips")
                }
                
                NavigationView{
                    TipsList()
                }
                .tabItem{
                    Image(systemName:  "person.fill.questionmark")
                    Text("Tips")
                }
                
                
            }
            
            
           
            
            
            }
    }
}
