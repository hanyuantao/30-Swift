//
//  MainViewController.swift
//  FindMyLocation
//
//  Created by An on 16/7/27.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var locationLab: UILabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayOut()
        
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
        locationLab.backgroundColor = UIColor ( red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0 )
        self.locationLab.frame = CGRectMake(0, 0, self.view.frame.size.width-40, 80)
        self.locationLab.center = CGPointMake(self.view.center.x, 100)
        visual.contentView.addSubview(self.locationLab)
        
        let locationBtn: UIButton = UIButton.init(frame: CGRectMake(0, 0, 150, 40))
        locationBtn.center  = CGPointMake(self.view.center.x, self.view.frame.height - 100)
        locationBtn.backgroundColor = UIColor ( red: 0.0, green: 0.251, blue: 0.502, alpha: 1.0 )
        locationBtn.layer.masksToBounds = true
        locationBtn.layer.cornerRadius = 20
        locationBtn.setTitle("Find Me", forState: UIControlState.Normal)
        visual.contentView.addSubview(locationBtn)
        
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
