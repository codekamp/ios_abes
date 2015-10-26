//
//  ViewController.swift
//  CKMapVIewDemoABES
//
//  Created by Cerebro on 25/10/15.
//  Copyright (c) 2015 CodeKamp. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    var zoomedIn = false
    let location = CLLocation(latitude: 28.6339757, longitude: 77.443378)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        let pin1 = MKPointAnnotation()
        pin1.coordinate = location.coordinate
        pin1.title = "ABES college"
        pin1.subtitle = "The best college in the world"
        
        mapView.addAnnotation(pin1)
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapViewDidFinishLoadingMap(mapView: MKMapView!) {
        
        println("map loaded")
        
        
    }
    
    func mapViewDidFinishRenderingMap(mapView: MKMapView!, fullyRendered: Bool) {
        println("map rendered")
        if(!zoomedIn) {
            
            
            let region = MKCoordinateRegionMakeWithDistance(location.coordinate, 5000.0, 5000.0)
            
            mapView.mapType = MKMapType.Hybrid
            mapView.setRegion(region, animated: true)
            zoomedIn = true
        }
    }
    
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        <#code#>
    }
    
    
}

