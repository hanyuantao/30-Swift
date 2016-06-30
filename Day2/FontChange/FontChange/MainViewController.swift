//
//  MainViewController.swift
//  FontChange
//
//  Created by An on 16/6/30.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {

    //MARK: - 声明对象
    var textView:UITextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        // Do any additional setup after loading the view.
    }

    //MARK: - 设置布局
    
    

    func setupLayout() {
        
        self.textView = UITextView.init(frame: CGRectMake(0, 0, self.view.frame.size.width, 100))
        textView.font = UIFont.systemFontOfSize(30, weight: UIFontWeightBold)
        textView.text = "SnapKit is designed to be extremely easy to use. Let\'s say we want to layout a box that is constrained to it\'s superview\'s edges with 20pts of padding.\n\n"
        self.view.addSubview(self.textView)
        self.textView.snp_makeConstraints { (make) in
            make.left.right.top.equalTo(UIEdgeInsetsMake(50, 10, 10, 10))
            make.height.equalTo(400)
        }
        
        let changeBtn:UIButton = UIButton.init(frame: CGRectMake(0, 0, 80, 80))
        changeBtn.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        changeBtn.backgroundColor = UIColor.purpleColor()
        changeBtn.setTitle("变色龙", forState: UIControlState.Normal)
        changeBtn.layer.cornerRadius = 40
        changeBtn.layer.masksToBounds = true
        changeBtn.addTarget(self, action: #selector(MainViewController.ColorAnimation), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(changeBtn)
        changeBtn.snp_makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.width.height.equalTo(80)
            make.bottom.equalTo(self.view.snp_bottom).offset(-30);
        }
        
    }
    
    func ColorAnimation(){
        let timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(MainViewController.changeFont), userInfo: nil, repeats: true)
        timer.fire()
    }
    
    
    /**
     生成随机颜色
     */
    func changeFont(){
        let redCorlor = CGFloat.init(Float(arc4random()) / 0xFFFFFFFF)
        let greenColor = CGFloat.init(Float(arc4random()) / 0xFFFFFFFF)
        let blueColor = CGFloat.init(Float(arc4random()) / 0xFFFFFFFF)
        self.textView.textColor = UIColor.init(red: redCorlor, green: greenColor, blue: blueColor, alpha: 1.0)
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
