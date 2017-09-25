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
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        get{
            return UIStatusBarStyle.lightContent
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.timeLab.text = "0.00"
        self.view.backgroundColor = UIColor.black
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

