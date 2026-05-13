//
//  Detail.swift
//  IOS-proj-2
//
//  Created by Majid on 09/05/2026.
//

import SwiftUI
struct LandmarkDetail: View{
    var landmark: Landmark
    var onToggle: () -> Void
    var body : some View{
        ScrollView {
            //Map
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea()
            //Image of location
            CircleImage(imageName: landmark.imageIdentifier,image: landmark.image)
                .offset(y:-130)
                .padding(.bottom, -130)
            HStack{
               Spacer()
                
                FavoriteView(isSet: landmark.isFavorite,
                             onToggle:  {onToggle()})
                    .padding()
            }
            // Tile of place
            ParkTile(
                title: landmark.name,
                park: landmark.park,
                place: landmark.city,
                desc: landmark.description
            )
            .glassEffect(in: .rect(cornerRadius: 20))
            .transition(.move(edge: .bottom).combined(with: .opacity))
            .padding(.horizontal,10)
            
            Spacer(minLength: 100)
            
        } .navigationTitle(landmark.name)
        #if os(iOS)
            .navigationBarTitleDisplayMode(.inline)
        #endif
        
        
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0],onToggle:{})
}
