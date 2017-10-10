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
        videoImage = UIImageView.init(frame: self.frame)
        self.contentView.addSubview(videoImage!)
       videoImage?.image = UIImage.init(named: "videoScreenshot01")
        
        self.videoTimeLabel = UILabel.init(frame: CGRect.init(origin: CGPoint.init(x: 0, y: self.frame.size.width-40), size: CGSize.init(width: self.frame.size.width, height: 40)))
        self.contentView.addSubview(self.videoTimeLabel!)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
