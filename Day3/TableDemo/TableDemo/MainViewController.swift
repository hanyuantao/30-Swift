//
//  MainViewController.swift
//  TableDemo
//
//  Created by An on 16/7/3.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    let videoTable:UITableView = UITableView();
    var data = [
        video(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        video(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        video(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        video(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        video(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        video(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
    ]
 
    
    let CellIdentifierClass = "VideoTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.videoTable.frame = self.view.frame;
        self.videoTable.delegate = self;
        self.videoTable.dataSource = self;
        self.view.addSubview(videoTable)
        
        // Class 注册
        self.videoTable.registerClass(VideoTableViewCell.self, forCellReuseIdentifier: CellIdentifierClass)
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 220
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(CellIdentifierClass)
        if cell == nil {
            cell = VideoTableViewCell.init(style: UITableViewCellStyle.Default, reuseIdentifier: CellIdentifierClass) as VideoTableViewCell
        }
        let videoObject = self.data[indexPath.row]
        cell?.textLabel?.text = videoObject.title
        cell?.detailTextLabel?.text = videoObject.source

        return cell!
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
