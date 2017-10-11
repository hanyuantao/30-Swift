//
//  ViewController.swift
//  Day3
//
//  Created by An on 2017/10/9.
//  Copyright © 2017年 once. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

struct Video {
    let name:String
    let file:String
    let time:String
}


class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

//    CGRectMake(0, 0, view.frame.size.width, view.frame.size.height)
    let videoTableView = UITableView()
    
    var videoList = [
        Video(name: "Barcelona", file: "The Barcelona team", time: "5:00"),
        Video(name: "Real Madrid", file: "The Real Madrid team", time: "4:00"),
        Video(name: "Madrid Athlete", file: "The Madrid Athlete team", time: "3:00"),
    ]
    
    var playerCotroller = AVPlayerViewController()
    var player = AVPlayer()
    
    override func viewDidLoad() {
        videoTableView.frame = self.view.frame
        super.viewDidLoad()
        self.title = "Watch List"
        videoTableView.delegate = self
        videoTableView.dataSource = self
        videoTableView.register(VideoTableViewCell.self, forCellReuseIdentifier: "VideoTableViewCell")
        self.view.addSubview(videoTableView)
        
        self.view.backgroundColor = UIColor.red
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoList.count
    } 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = VideoTableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "VideoCell")
        let cell:VideoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "VideoTableViewCell", for: indexPath) as! VideoTableViewCell
        let video = videoList[indexPath.row]
        cell.videoTimeLabel?.text = video.name
        cell.videoImage?.image = UIImage(named: "videoScreenshot0\(indexPath.row+1)")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let path = Bundle.main.path(forResource: "emojizone", ofType: "mp4")
        player = AVPlayer(url: URL(fileURLWithPath: "emojizone.mp4"))
        playerCotroller.player = player
        self.present(playerCotroller, animated: true) {
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
