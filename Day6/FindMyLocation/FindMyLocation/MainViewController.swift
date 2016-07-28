//
//  MainViewController.swift
//  FindMyLocation
//
//  Created by An on 16/7/27.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit
import CoreLocation

class MainViewController: UIViewController,CLLocationManagerDelegate {

    var locationLab: UILabel = UILabel()
    var locationManager : CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupLayOut()
        
        // Do any additional setup after loading the view.
    }
    
    /**
     设置布局
     */
    func setupLayOut(){
        
        let bgImage:UIImageView = UIImageView.init(frame: self.view.frame)
        bgImage.image = UIImage.init(named: "bg")
        self.view.addSubview(bgImage)
        
        let blurEffect:UIBlurEffect = UIBlurEffect(style: .Dark)
        let visual :UIVisualEffectView = UIVisualEffectView(effect: blurEffect)
        visual.frame = bgImage.frame;
        bgImage.addSubview(visual)
        
        self.locationLab  = UILabel.init()
        self.locationLab.text = "This is my home"
        self.locationLab.textAlignment  = NSTextAlignment.Center
        self.locationLab.textColor = UIColor.whiteColor()
        locationLab.backgroundColor = UIColor ( red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0 )
        self.locationLab.frame = CGRectMake(0, 0, self.view.frame.size.width-40, 80)
        self.locationLab.center = CGPointMake(self.view.center.x, 100)
        visual.contentView.addSubview(self.locationLab)
        
        let locationBtn: UIButton = UIButton.init(frame: CGRectMake(0, 0, 245, 59))
        locationBtn.center  = CGPointMake(self.view.center.x, self.view.frame.height - 100)
        locationBtn.setBackgroundImage(UIImage.init(named: "Find my location"), forState: UIControlState.Normal)
        locationBtn.setTitle("开始定位", forState: UIControlState.Normal)
        
        locationBtn.addTarget(self, action: #selector(MainViewController.buttonTapped(_:)), forControlEvents: .TouchUpInside)
        
        self.view.addSubview(locationBtn)

    }

    func buttonTapped(sender: UIButton) {
        locationManager = CLLocationManager()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if (error != nil) {
                self.locationLab.text = "Reverse geocoder failed with error" + error!.localizedDescription
                return
            }
            if placemarks!.count > 0 {
                let pm = placemarks![0]
                self.showDetailLocation(pm)
                
            }
        }
    }
    
    func showDetailLocation(pm:CLPlacemark?){
        if let placemark = pm {
            let address = (placemark.addressDictionary!["Name"] != nil) ? placemark.addressDictionary!["Name"] : ""
//            let locality = (placemark.locality != nil) ? placemark.locality : ""
//            let postalCode =  (placemark.postalCode != nil) ? placemark.postalCode : ""
//            let administrativeArea = (placemark.administrativeArea != nil) ? placemark.administrativeArea : ""
//            let country = (placemark.country != nil) ? placemark.country : ""
            
            self.locationLab.text = (address! as! String)

        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
