//
//  Landmark.swift
//  SecondLandmarks
//
//  Created by LPT 531 on 20/01/20.
//  Copyright © 2020 IJNIC Lohot. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Hashable, Codable {
    var id : Int
    var name : String
    fileprivate var imageName : String
    fileprivate var coordinates : Coordinates
    var state: String
    var category : Category
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude,
                               longitude: coordinates.longitude)
    }
    
    enum Category : String, CaseIterable, Codable, Hashable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
    
    extension Landmark{
        var image = Image{
            ImageStore.shared.image(name: imageName)
        }
    }
    
    struct Coordinates : Codable, Hashable {
        var longitude : Double
        var latitude : Double
    }
}
