//
//  HikesView.swift
//  IOS-proj-2
//
//  Created by Majid on 11/05/2026.
//

import SwiftUI


extension AnyTransition {
    static var moveAndFade: AnyTransition {
        .asymmetric(
            insertion: .move(edge: .trailing).combined(with: .opacity),
            removal: .scale.combined(with: .opacity)
        )
    }
}
struct HikesView:View{
    @StateObject var vm = HikesVM()
    var body:some View{
        List(vm.hikesList,id: \.id){hike in
            HikesContentView(hike: hike)
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Hikes")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
        #if os(iOS)
        .navigationBarTitleDisplayMode(.inline)
        #endif
    }
}
struct HikesContentView: View {

    var hike:Hike
    @State private var showDetail = false

    var body: some View{
        VStack{
            HStack{
                HikeGraph(hike:hike, path: \.elevation)
                    .frame(width: 50,height: 30).padding()
                
                VStack(alignment: .leading){
                    Text(hike.name)
                        .font(.headline)
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button {
                    withAnimation(.easeInOut(duration: 0.8)) {
                        showDetail.toggle()
                    }
                }label:{
                    Label("Graph",systemImage:"chevron.right.circle")
                        .labelStyle(.iconOnly)
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5:1)
                        .padding()
                }
            }
            if showDetail {
                HikeDetail(hike: hike)
                    .id(hike.id)
                    .transition(.moveAndFade)
            }
        }
    }
}

#Preview {
    HikesView()
}

