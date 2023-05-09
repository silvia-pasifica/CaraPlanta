//
//  LocationManager.swift
//  WeatherMenu
//
//  Created by Helen on 22/03/23.
//

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isLoading = false
    
    override init() {
        super.init()
        manager.delegate = self
    }
    
    //asking user permission to allow location
    func requestLocation(){
        isLoading = true
        manager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isLoading = false
    }
    
    //handle error
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error getting your location :(", error)
        isLoading = false
    }
}

