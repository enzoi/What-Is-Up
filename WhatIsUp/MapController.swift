//
//  MapController.swift
//  WhatIsUp
//
//  Created by Yeontae Kim on 2/13/18.
//  Copyright © 2018 YTK. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces

class MapController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    var currentLocation: CLLocation?
    var mapView: GMSMapView!
    var placesClient: GMSPlacesClient!
    var zoomLevel: Float = 15.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "What is up??"
        
        // Current Location
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.distanceFilter = 50
        locationManager.startUpdatingLocation()
        locationManager.delegate = self
        
        placesClient = GMSPlacesClient.shared()
        
        let camera = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        mapView.settings.compassButton = true
        mapView.isMyLocationEnabled = true
        
        // Add seed markers
        let position1 = CLLocationCoordinate2D(latitude: 37.7745, longitude: -122.4203)
        let marker1 = GMSMarker(position: position1)
        marker1.title = "Event"
        marker1.icon = #imageLiteral(resourceName: "icons8-today-96")
        marker1.map = mapView
        
        let position2 = CLLocationCoordinate2D(latitude: 37.7725, longitude: -122.4183)
        let marker2 = GMSMarker(position: position2)
        marker2.title = "Info"
        marker2.icon = #imageLiteral(resourceName: "icons8-megaphone-96")
        marker2.map = mapView
        
        view = mapView
    }
    
}

