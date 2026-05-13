//
//  ContentView.swift
//  IOS-proj-2
//
//  Created by Majid on 08/05/2026.
//

import SwiftUI


struct ContentView: View {
    @State private var toggleTile: Bool = false
    
    var body: some View {
        ZStack {
            // Background image
            Image("turtlerock")
                .resizable()
                
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                // Top bar
                HStack(spacing: 12) {
                    Image(systemName: "globe")
                        .imageScale(.large)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        Text("Hello, world!")
                            .font(.headline)
                        Text("Welcome")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                    Spacer(minLength: 0) // This keeps text left and waveform right
                    
                    Image(systemName: "waveform")
                        .imageScale(.medium)
                        .foregroundStyle(.secondary)
                }
                .padding(16)
                .frame(maxWidth: .infinity)
                .glassEffect(in: .rect(cornerRadius: 20))
                .padding(.horizontal, 16)
                .padding(.top, 12)
                
                Spacer()
                
                // Tile — separate glass card
                if toggleTile {
                    ParkTile(
                        title: "Turtle Rock",
                        park: "Joshua Tree National Park",
                        place: "California"
                    )
                    
                    .glassEffect(in: .rect(cornerRadius: 20))
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                }
                
                // Button — separate glass card
                Button("Toggle Park Tile") {
                    withAnimation(.spring(duration: 0.4)) {
                        toggleTile.toggle()
                    }
                }
                .buttonStyle(.glass)
                .padding(.bottom, 24)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top).padding()
        } .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
    }
}

#Preview {
    ContentView()
}
