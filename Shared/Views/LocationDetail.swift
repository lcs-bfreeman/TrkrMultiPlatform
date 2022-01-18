//
//  LocationDetail.swift
//  TrkrMultiPlatform
//
//  Created by Ben Freeman on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .padding(.bottom)

            Spacer()
         
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
                
            }
            .padding(.horizontal)
            Text(location.more)
                .padding([.horizontal, .bottom])
        }
        .navigationTitle(location.name)
        
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(location: Location.example)
        }
    }
}
