//
//  HikesVM.swift
//  IOS-proj-2
//
//  Created by Majid on 11/05/2026.
//

import SwiftUI
import Combine

class HikesVM : ObservableObject{
    
    @Published var hikesList : [Hike] = ModelData().hikes
    
    
}
