//
//  LandmarkVM.swift
//  IOS-proj-2
//
//  Created by Majid on 10/05/2026.
//

import SwiftUI
import Combine

final class LandmarkVM: ObservableObject {
    
    @Published var filteredLandmarks:[Landmark] = ModelData().landmarks
    @Published var showFavoritesOnly = false { didSet { filterFavorites() } }
    
    func toggleFavorite(landmark: Landmark) {
        // Update the source data first, then refresh the filtered list
        if let sourceIndex = ModelData().landmarks.firstIndex(where: { $0.id == landmark.id }) {
            ModelData().landmarks[sourceIndex].isFavorite.toggle()
        }
        filterFavorites()
    }
    func toggleFilterFavorite() {
        showFavoritesOnly.toggle()
        filterFavorites()
    }
    
    func filterFavorites() {
        filteredLandmarks = ModelData().landmarks.filter{ landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    init() {
        filterFavorites()
    }
}

