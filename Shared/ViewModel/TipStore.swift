//
//  TipStore.swift
//  TrkrMultiPlatform
//
//  Created by Ben Freeman on 2022-01-20.
//

import Foundation
class TipStore: ObservableObject {

let tips: [Tip]


init() {
    
    let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
    
    let data = try! Data(contentsOf: url)
    
    tips = try! JSONDecoder().decode([Tip].self, from: data)
    
}
}
