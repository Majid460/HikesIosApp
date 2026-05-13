//
//  LandmarkList.swift
//  IOS-proj-2
//
//  Created by Majid on 09/05/2026.
//

import SwiftUI

struct LandmarkList: View {
    @StateObject var vm = LandmarkVM()


    var body: some View {
        List {
            Toggle(isOn: $vm.showFavoritesOnly) {
                Text("Favorites only")
            }
            ForEach(vm.filteredLandmarks, id: \.id) { landmark in
                NavigationLink {
                    LandmarkDetail(
                        landmark: landmark,
                        onToggle: { vm.toggleFavorite(landmark: landmark) }
                    )
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }.listStyle(.plain)
            .scrollContentBackground(.hidden)
            .background(Color.white)
      
        .animation(.default, value: vm.filteredLandmarks)
    }
}

#Preview {
    LandmarkList()
}
