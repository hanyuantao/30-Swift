//
//  MainViewController.swift
//  SnapChat
//
//  Created by An on 16/7/8.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UIScrollViewDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().statusBarHidden = true
        
        let scrollView: UIScrollView = UIScrollView(frame: self.view.frame)
        scrollView.delegate = self
        self.view.addSubview(scrollView)
        scrollView.pagingEnabled  = true

        
        let leftView: LeftViewController = LeftViewController(nibName: "LeftViewController", bundle: nil)
        let rightView: RightViewController = RightViewController (nibName: "RightViewController", bundle: nil)
        let cameraView: CameraViewController = CameraViewController(nibName: "CameraViewController", bundle: nil)
        
        self.addChildViewController(leftView);
        scrollView.addSubview(leftView.view)
        leftView.didMoveToParentViewController(self)
        
        self.addChildViewController(rightView);
        scrollView.addSubview(rightView.view)
        rightView.didMoveToParentViewController(self)
        
        self.addChildViewController(cameraView);
        scrollView.addSubview(cameraView.view)
        cameraView.didMoveToParentViewController(self)

        let leftFrame :CGRect = self.view.frame
        leftView.view.frame = leftFrame
        

        var centerViewFrame :CGRect = self.view.frame
        centerViewFrame.origin.x = self.view.frame.width
        cameraView.view.frame = centerViewFrame
        
        var rightViewFrame :CGRect = self.view.frame
        rightViewFrame.origin.x = 2 * self.view.frame.width
        rightView.view.frame = rightViewFrame
        
        scrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.size.height)


        // Do any additional setup after loading the view.
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
