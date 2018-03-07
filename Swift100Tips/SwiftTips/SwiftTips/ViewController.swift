//
//  ViewController.swift
//  SwiftTips
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Tips1 Currying
        let curry = Currying()
        curry.demo()
        
        //Tips2 MutatingProtocal
        let mutatingProtocal = MutatingProtocal()
        mutatingProtocal.demo()
        
        //Tips3
        let tuple = Tuple()
        tuple.demo()
        
        //Tips4
        let auto = AutoClosure()
        auto.demo()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

