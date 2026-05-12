//
//  CircleImage.swift
//  ios-practice-1
//
//  Created by Majid on 08/05/2026.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity)
            .clipShape(Circle())
            .overlay(content: {
                Circle().stroke(.gray, lineWidth: 4)
            }).shadow(radius: 10)
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
    CircleImage()
    FullImage()
}
