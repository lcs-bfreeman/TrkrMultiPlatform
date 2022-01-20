//
//  TipsList.swift
//  TrkrMultiPlatform
//
//  Created by Ben Freeman on 2022-01-19.
//

import SwiftUI

struct TipsList: View {
    
    @StateObject var dataStore = TipStore()
    
    var body: some View {
        
        List(dataStore.tips, id: \.text, children: \.children) { tip in
            
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
            
            Text(tip.text)
                
            }
            
        }
        
    }
    
    
    
    
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
