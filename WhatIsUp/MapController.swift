//
//  MapController.swift
//  WhatIsUp
//
//  Created by Yeontae Kim on 2/13/18.
//  Copyright © 2018 YTK. All rights reserved.
//

import UIKit
import GoogleMaps

class MapController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "What is up??"
        
        let camera = GMSCameraPosition.camera(withLatitude: 37.7749, longitude: -122.4194, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    
        let marker = GMSMarker()
        marker.position = camera.target
        marker.title = "Title"
        marker.map = mapView

        view = mapView
    }
}

