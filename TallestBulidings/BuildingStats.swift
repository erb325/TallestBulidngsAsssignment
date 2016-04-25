//
//  BuildingStats.swift
//  TallestBuildings
//
//  Created by Ember Baker on 4/11/16.
//  Copyright © 2016 Ember Baker. All rights reserved.
//

import Foundation
import MapKit

class BuildingStats: NSObject {
    var location: CLLocationCoordinate2D
    var name: String
    var website: String
    var city: String
    var country: String
    
    init (loc: CLLocationCoordinate2D, n: String, web: String, c: String, coun: String){
        self.location = loc
        self.name = n
        self.website = web
        self.city = c
        self.country = coun
    }
}