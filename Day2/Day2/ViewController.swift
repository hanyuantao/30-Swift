//
//  ViewController.swift
//  Day2
//
//  Created by An on 2017/9/27.
//  Copyright © 2017年 once. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

//    NSString *bundleIdentifier = [[NSBundle mainBundle] bundleIdentifier];
    var fontName = ""
    
    let fontFamilys = [
        "Kefa-Regular",
        "LaoSangamMN",
        "ZapfDingbatsITC",
        "KhmerSangamMN"
    ]
    
    
    var fontRow = 0
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
        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 44, width: width, height: 300))
        self.view.addSubview(tableView)
        button.setTitle("Change", for: UIControlState.normal)
        button.addTarget(self, action:#selector(changeFont), for: UIControlEvents.touchUpInside)
        button.backgroundColor=UIColor.blue
        button.frame = CGRect.init(x:(width-100)/2 , y:350 , width: 100, height: 44);
        self.view.addSubview(button);
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        
        for family in UIFont.familyNames {
            print("-----"+family+"------")
            for font in UIFont.fontNames(forFamilyName: family){
                print(font)
            }
        }

    }
    
    @objc func changeFont(){
        fontRow += 1
        if fontRow == 4 {
            fontRow = 0
        }
        self.fontName = fontFamilys[fontRow]
        self.tableView.reloadData()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.poemData.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = self.poemData[indexPath.row]
        cell.textLabel?.font = UIFont.init(name: self.fontName, size: 16)
        return cell
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

