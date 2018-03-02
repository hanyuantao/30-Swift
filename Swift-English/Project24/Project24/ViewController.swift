//
//  ViewController.swift
//  Project24
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

extension Int{
    func plusOne() -> Int {
        return self + 1
    }
//    func squared() -> Int {
//        return self * self
//    }

}

extension BinaryInteger {
    func squared() -> Self {
        return self * self
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        intExtension()
        
    }
    

    func intExtension() {
        
        let myInt = 1024
        print(myInt.plusOne())
        print(myInt.squared())
        
        myInt.squared()
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

