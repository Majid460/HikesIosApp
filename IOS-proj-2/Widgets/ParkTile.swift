//
//  HStackView.swift
//  ios-practice-1
//
//  Created by Majid on 05/05/2026.
//
import SwiftUI

struct ParkTile: View {
    // Pass Parameters
    let title:String
    let place:String
    let park:String
    let desc: String
    
    init(
         title:String = "Default Title",
         park: String = "Default Park",
         place: String = "Default Place",
         desc:String = "Default Description"
    ) {
        self.place = place
        self.park = park
        self.title = title
        self.desc = desc
    }
    
    var body:some View{
            VStack(alignment: .leading){
                Text(title)
                    .font(.title)
                    .layoutPriority(1)
                    .foregroundColor(Color.blue)
                HStack{
                    Text(park).font(.subheadline)
                        .foregroundColor(Color.black)
                    
                    Spacer(minLength: 10) // Ensures there's always a gap
                    Text(place)
                        .font(.subheadline)
                        .foregroundColor(Color.red)
                }
                Divider()
                
                Text("About \(title)").font(.title2)
                    .foregroundColor(Color.primary)
                Text(desc)
            }.padding([.top],0)
            .padding(.bottom,12)
            .padding(.horizontal,15)
            .frame(alignment: .top)
            .frame(maxWidth: .infinity)
    }
    
}

#Preview {
    ParkTile()
}
