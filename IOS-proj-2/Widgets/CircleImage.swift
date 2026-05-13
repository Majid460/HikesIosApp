//
//  CircleImage.swift
//  ios-practice-1
//
//  Created by Majid on 08/05/2026.
//

import SwiftUI

struct CircleImage: View {
    
    var imageName: String
    var image:Image
    
    var body: some View {
        
        Group {
            
            if imageName == "turtlerock" {
                
                image
                    .resizable()
                    .frame(width:300,height: 300)
                
            } else {
                
                image
            }
        }
        .clipShape(Circle())
        .overlay {
            Circle().stroke(.gray, lineWidth: 4)
        }
        .shadow(radius: 10)
    }
}
// Full Image
struct FullImage: View {
    var body: some View {
        Image("turtlerock")
            .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
    }
}

#Preview {
    //CircleImage(image:Image("turtlerock"))
    FullImage()
}
