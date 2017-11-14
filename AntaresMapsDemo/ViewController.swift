//
//  ViewController.swift
//  AntaresMapsDemo
//
//  Created by Gazdag Imre on 2017. 11. 13..
//  Copyright © 2017. Gazdag Imre. All rights reserved.
//

import UIKit
import AntaresMaps
import CoreLocation

class ViewController: UIViewController {

    var mapView: AMMapView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let camera = AMCameraPosition.camera(target: CLLocationCoordinate2D(latitude: 46.9536996, longitude: 17.8947033), zoom: 15.6)
        mapView = AMMapView.map(frame: CGRect.zero, camera: camera)
        view = mapView
        
        let marker: AMMarker = AMMarker(position: CLLocationCoordinate2D(latitude: 46.9536996, longitude: 17.8947033))
        marker.map = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
