//
//  MapViewController.swift
//  ShorecrestMaps
//
//  Created by Kalju Jake Nekvasil on 9/17/17.
//  Copyright © 2017 Kalju Jake Nekvasil. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let regionRadius: CLLocationDistance = 1000
    let zoomLocation = CLLocationCoordinate2D(latitude: 27.819831, longitude: -82.631781)
    

    func rotateCamera(location: CLLocationCoordinate2D){
        let camera = MKMapCamera(lookingAtCenter: location, fromDistance: regionRadius, pitch: 0, heading: 90)
        mapView.setCamera(camera, animated: false)
        mapView.mapType = .hybrid
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
        rotateCamera(location: zoomLocation)
        
        let deepGreenColor = UIColor(red: 4.0/255, green: 64.0/255, blue: 42.0/255, alpha: 1.0)
        let dullYellowColor = UIColor(red: 255.0/255, green: 248.0/255, blue: 223.0/255, alpha: 1.0)

        tabBarController?.tabBar.barTintColor = deepGreenColor
        tabBarController?.tabBar.tintColor = dullYellowColor
        
//        let attrs = [
//            NSAttributedStringKey.foregroundColor: dullYellowColor,
//            NSAttributedStringKey.font: UIFont(name: "Kohinoor Devanagari", size: 20)!
//        ]
//        
//        UINavigationBar.appearance().titleTextAttributes = attrs;
    }


}
