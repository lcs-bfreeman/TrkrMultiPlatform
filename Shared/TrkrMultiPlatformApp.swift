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
            NavigationView {
                LocationList(store: store)
            }
            }
    }
}
