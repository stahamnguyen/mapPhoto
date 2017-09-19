//
//  DroppablePin.swift
//  MapImplementation
//
//  Created by Staham Nguyen on 19/09/2017.
//  Copyright © 2017 Staham Nguyen. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
