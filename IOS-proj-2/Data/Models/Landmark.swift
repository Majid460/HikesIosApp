//
//  PlaceModel.swift
//  IOS-proj-2
//
//  Created by Majid on 08/05/2026.
//
import Foundation
import SwiftUI
import CoreLocation

struct PlaceModel :Hashable, Codable{
    var id:Int
    var name:String
    var description:String
    var kind:String
    
    private var imageName:String
    var image:Image{
        Image(imageName)
    }
    
    private var coordinates:Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.lat,
                longitude: coordinates.long
            )
            }
    
    struct Coordinates:Hashable,Codable{
        var lat:Double
        var long:Double
    }

}
