//
//  ViewController.swift
//  Day4
//
//  Created by An on 2017/10/17.
//  Copyright © 2017年 once. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.green
        
        let mainScrollView:UIScrollView = UIScrollView.init()
        self.view.addSubview(mainScrollView)
        mainScrollView.snp.makeConstraints { (make) in
            make.edges.equalTo(self.view)
        }
        
//        let titleLab = UILabel.init()
//        titleLab.text = "This is a Text"
//        titleLab.textAlignment = NSTextAlignment.center
//        mainScrollView.addSubview(titleLab)
//        titleLab.snp.makeConstraints { (make) in
//            make.width.equalTo(300)
//            make.height.equalTo(50)
//            make.centerX.equalTo(mainScrollView)
//            make.centerY.equalTo(mainScrollView)
//        }

        
        let leftVC:LeftViewController = LeftViewController()
        let cameraVC:CameraViewController = CameraViewController()
        let rightVC:RightViewController = RightViewController()
        
        self.addChildViewController(leftVC);
        mainScrollView.addSubview(leftVC.view)
        leftVC.view.backgroundColor = UIColor.yellow
        leftVC.didMove(toParentViewController: self)
        leftVC.view.snp.makeConstraints { (make) in
            make.size.equalTo(mainScrollView);
            make.left.top.equalTo(mainScrollView);
        }
        
        mainScrollView.addSubview(cameraVC.view)
        cameraVC.view.backgroundColor = UIColor.gray
        cameraVC.didMove(toParentViewController: self)
        cameraVC.view.snp.makeConstraints { (make) in
            make.size.equalTo(mainScrollView);
            make.left.equalTo(leftVC.view.snp.right);
        }
        
        mainScrollView.addSubview(rightVC.view)
        rightVC.view.backgroundColor = UIColor.orange
        rightVC.didMove(toParentViewController: self)
        rightVC.view.snp.makeConstraints { (make) in
            make.size.equalTo(mainScrollView);
            make.left.equalTo(cameraVC.view.snp.right);
            make.right.equalTo(mainScrollView.snp.right);
        }
        mainScrollView.isPagingEnabled = true
        mainScrollView.contentSize = CGSize(width:self.view.frame.width * 3, height:self.view.frame.height)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}















