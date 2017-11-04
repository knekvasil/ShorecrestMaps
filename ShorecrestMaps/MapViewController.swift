//
//  ViewController.swift
//  ShorecrestMaps
//
//  Created by Kalju Jake Nekvasil on 9/17/17.
//  Copyright © 2017 Kalju Jake Nekvasil. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    
//    let zoomLocation = CLLocation(latitude: 27.819024, longitude: -82.633971)
    let regionRadius: CLLocationDistance = 1000
    
    let zoomLocation = CLLocationCoordinate2D(latitude: 27.819831, longitude: -82.631781)
    
//    func centerMapOnLocation(location: CLLocation){
//        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius*2, regionRadius*2)
//        mapView.setRegion(coordinateRegion, animated: false)
//        
//    }
    
    func rotateCamera(location: CLLocationCoordinate2D){

        let camera = MKMapCamera(lookingAtCenter: location, fromDistance: regionRadius, pitch: 0, heading: 90)
        mapView.setCamera(camera, animated: false)
        mapView.mapType = .hybrid
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //centerMapOnLocation(location: zoomLocation) //MKCamera better, no rotation function in MKCoorReg
        rotateCamera(location: zoomLocation)
    }


    

}

