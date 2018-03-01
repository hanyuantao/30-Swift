//
//  ViewController.swift
//  Project18
//
//  Created by apple on 2018/3/1.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(1,2,3,4,4,5, separator: "*", terminator: "$")
        assert(1 == 1, "Maths failure!")
        assert(1 == 2, "Maths failure!")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

