//
//  DroppablePin.swift
//  pixel-city
//
//  Created by Robert Haddad on 12/7/17.
//  Copyright © 2017 Robert Haddad. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}

