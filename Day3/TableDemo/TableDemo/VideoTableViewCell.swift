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

    var videoImage: UIImageView? = UIImageView()
    var videoName: UILabel? = UILabel()
    var videoSoure: UILabel? = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupCell()
    }
    
    
    func setupCell(){
        self.contentView.addSubview(self.videoImage!)
        self.contentView.addSubview(self.videoName!)
        self.contentView.addSubview(self.videoSoure!)
        
        self.videoImage?.frame = self.contentView.frame
        self.videoName?.frame = CGRectMake(0, 0, self.contentView.frame.size.width, 60);
        self.videoSoure?.frame = CGRectMake(0, 0, self.contentView.frame.size.width, 50);
        self.videoSoure?.center = CGPointMake(self.contentView.center.x, self.contentView.frame.size.height - 50);
        self.videoName?.center = CGPointMake(self.contentView.center.x, self.contentView.frame.size.height - 110);
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
