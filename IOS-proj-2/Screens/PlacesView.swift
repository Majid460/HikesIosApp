//
//  LocationsView.swift
//  IOS-proj-2
//
//  Created by Majid on 08/05/2026.
//

import SwiftUI

struct LocationView: View{
    var body : some View{
        VStack{
            //Map
            MapView()
                .frame(height: 300)
            //Image of location
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            // Tile of place
            ParkTile(
                title: "Turtle Rock",
                park: "Joshua Tree National Park",
                place: "California",
                desc: "It is a beautiful place to visit."
            )
            .glassEffect(in: .rect(cornerRadius: 20))
            .transition(.move(edge: .bottom).combined(with: .opacity))
            .padding(.horizontal,10)
            
            Spacer(minLength: 100)
        
        }
        
       
    }
}

#Preview {
    LocationView()
}
