//
//  PlaceModel.swift
//  IOS-proj-2
//
//  Created by Majid on 08/05/2026.
//
import Foundation
import SwiftUI
import CoreLocation

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    
    var id: Int
    var name: String
    var description: String
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }

    var city: String
    var state: String
    
    var isFeatured: Bool
    var isFavorite: Bool
    
    var park: String
    
    private var imageName: String
    
    var imageIdentifier: String {
        imageName
    }
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
