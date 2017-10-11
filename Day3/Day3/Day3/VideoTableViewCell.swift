//
//  VideoTableViewCell.swift
//  Day3
//
//  Created by An on 2017/10/10.
//  Copyright © 2017年 once. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    var videoImage:UIImageView?
    var videoTimeLabel:UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        videoImage = UIImageView()
        videoImage?.image = UIImage(named: "videoScreenshot01")
        self.contentView.addSubview(videoImage!)

        self.videoTimeLabel = UILabel()
        self.contentView.addSubview(self.videoTimeLabel!)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.videoImage?.frame = CGRect(x:0.0, y:0.0, width:self.contentView.frame.size.width,height:self.contentView.frame.size.height)
        self.videoTimeLabel?.frame = CGRect.init(origin: CGPoint.init(x: 0, y: self.contentView.frame.size.height-40), size: CGSize.init(width: self.contentView.frame.size.width, height: 40))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
