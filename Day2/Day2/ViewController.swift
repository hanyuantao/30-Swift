//
//  ViewController.swift
//  Day2
//
//  Created by An on 2017/9/27.
//  Copyright © 2017年 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var poemData = ["Down by the salley gardens my love and I did meet",
                    "She passed the salley gardens with little snow-white feet.",
                    "She bid me take love easy, as the leaves grow on the tree; ",
                    "But I, being young and foolish, with her did not agree.",
                    "In a field by the river my love and I did stand,"];
    var tableView = UITableView.init()
    let button = UIButton.init()
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = self.view.frame.size.width
        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: width, height: 300))
        self.view.addSubview(tableView)
        
        button.setTitle("Change", for: UIControlState.normal)
        button.backgroundColor=UIColor.blue
        button.frame = CGRect.init(x:(width-100)/2 , y:350 , width: 100, height: 44);
        self.view.addSubview(button);
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

