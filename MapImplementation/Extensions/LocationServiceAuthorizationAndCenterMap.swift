//
//  LocationServiceAuthorizationAndCenterMap.swift
//  MapImplementation
//
//  Created by Staham Nguyen on 20/09/2017.
//  Copyright © 2017 Staham Nguyen. All rights reserved.
//

import CoreLocation

extension MapVC: CLLocationManagerDelegate {
    
    func configureLocationService() {
        if authorizationStatus == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if (status == .authorizedAlways) || (status == .authorizedWhenInUse) {
            centerMapOnUserLocation()
        }
    }
}
