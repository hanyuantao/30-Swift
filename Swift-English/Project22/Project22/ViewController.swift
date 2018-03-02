//
//  ViewController.swift
//  Project22
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//
import UIKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager : CLLocationManager!
    @IBOutlet var distanceReading: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()

        view.backgroundColor = UIColor.gray

    }
    
    func startScaning(){
        let uuid = UUID(uuidString: "CBF53DE5-725B-4A2F-9872-9DA732C6C23B")!
        let beaconRegion = CLBeaconRegion(proximityUUID: uuid, major: 123, minor: 456, identifier: "MyBeacon")
        
        locationManager.startMonitoring(for: beaconRegion);
        locationManager.startRangingBeacons(in:beaconRegion);
        
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways{
            if CLLocationManager.isMonitoringAvailable(for: CLBeaconRegion.self){
                if CLLocationManager.isRangingAvailable(){
                    //
                    startScaning()
                }
            }
        }
    }
    
    func update(distance:CLProximity) {
        switch distance {
        case .unknown:
            self.view.backgroundColor = UIColor.gray
            self.distanceReading.text = "UNKNOWN"
        case .far:
            self.view.backgroundColor = UIColor.blue
            self.distanceReading.text = "FAR"
            
        case .near:
            self.view.backgroundColor = UIColor.orange
            self.distanceReading.text = "NEAR"
            
        case .immediate:
            self.view.backgroundColor = UIColor.red
            self.distanceReading.text = "RIGHT HERE"

        }
    }
    
    func locationManager(_ manager: CLLocationManager, didRangeBeacons beacons: [CLBeacon], in region: CLBeaconRegion) {
        if beacons.count > 0 {
            let beacon = beacons[0]
            update(distance: beacon.proximity)
        } else {
            update(distance: .unknown)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
