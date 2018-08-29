//
//  LocationViewController.swift
//  Feeling
//
//  Created by Douglas Schiavi on 26/08/18.
//  Copyright © 2018 Douglas Schiavi. All rights reserved.
//

import UIKit
import CoreLocation

class LocationViewController: UIViewController, CLLocationManagerDelegate {
    
    var manager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyKilometer
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ActivateLocation(_ sender: UISwitch) {
        if sender.isOn {
            performSegue(withIdentifier: "LocationSegue", sender: self)
        }
        
        
    }
    
}
