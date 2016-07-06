//
//  VideoTableViewCell.swift
//  TableDemo
//
//  Created by An on 16/7/3.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit


struct video {
    let image: String
    let title: String
    let source: String
}


class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var videoImage: UIImageView!
    @IBOutlet weak var videoName: UILabel?
    @IBOutlet weak var videoSoure: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        self.setupCell()
//    }
    
    func setupCell(){
        
        videoImage = UIImageView.init(frame: CGRectMake(0, 0, 375, 220))
        videoName = UILabel.init()
        videoSoure = UILabel.init()
        
        self.contentView.addSubview(self.videoImage!)
        self.contentView.addSubview(self.videoName!)
        self.contentView.addSubview(self.videoSoure!)
        
        self.videoName?.frame = CGRectMake(0, 0, self.frame.size.width, 60);
        self.videoName?.center = CGPointMake(self.center.x, self.frame.size.height - 870);
        self.videoSoure?.frame = CGRectMake(0, 0, self.frame.size.width, 50);
        self.videoSoure?.center = CGPointMake(self.center.x, self.frame.size.height - 40);
        self.videoImage?.frame = self.frame
        self.videoImage?.center = self.center
        
    }
    
    func updateCell(aVideo:video) {
        self.videoName?.text = aVideo.title;
        self.videoSoure?.text = aVideo.source;
        self.videoImage?.image = UIImage(named: aVideo.image)
    }

    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
