//
//  ViewController.swift
//  Day1
//
//  Created by An on 2017/9/25.
//  Copyright © 2017年 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playBtn:UIButton!
    @IBOutlet weak var pauseBtn:UIButton!
    @IBOutlet weak var timeLab:UILabel!
    
    var count = 0.00
    var timer = Timer()
    var isPlaying = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return UIStatusBarStyle.lightContent
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.timeLab.text = String(count)
        self.view.backgroundColor = UIColor.black
        
        self.playBtn.addTarget(self, action: #selector(playTimer(sender:)), for: UIControlEvents.touchUpInside)
        
        
    }
    
    @objc func playTimer(sender:AnyObject) {
        if isPlaying {
            return
        }
        
        playBtn.isEnabled = false
        pauseBtn.isEnabled = true
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer:Timer) in
            print("*****")
        })
        timer.fire()
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

