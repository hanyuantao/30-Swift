//
//  MainViewController.swift
//  SimpleStopWatch
//
//  Created by An on 16/6/28.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - 声明对象
    @IBOutlet weak var valueBtn:UIButton!
    @IBOutlet weak var pauseBtn:UIButton!
    @IBOutlet weak var playBtn:UIButton!
    
//    let countTimer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("countUp"), userInfo: nil, repeats: true);
    
//    let countTimer = NSTimer.init(timeInterval: 0.1, target: self, selector: "countUp", userInfo: nil, repeats: true)
    
    var Timer = NSTimer()
    
    var countValue:Float = 0.0
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent;
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - 事件处理
 
    //播放方法
    @IBAction func play(sender:AnyObject){
        Timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(MainViewController.countUp), userInfo: nil, repeats: true)
    }

    //暂停方法
    @IBAction func pause(sender:AnyObject){
        Timer.invalidate()
    }
    
    //重置方法
    @IBAction func reset(sender:AnyObject){
        Timer.invalidate()
        self.countValue = 0.0
        valueBtn.titleLabel?.text = String(self.countValue)
    }
    
    func countUp(){
        self.countValue += 0.5
        self.valueBtn.setTitle(String(format: "%.1f",self.countValue), forState: UIControlState.Normal)
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
