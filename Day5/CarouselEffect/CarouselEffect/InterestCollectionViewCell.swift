//
//  InterestCollectionViewCell.swift
//  CarouselEffect
//
//  Created by An on 16/7/21.
//  Copyright © 2016年 once. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    

    override init(frame:CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var interest : Interest! {
        didSet{
            self.updateUI()
        }
    }

    private func updateUI(){
        print("This is a Cell")
        self.backgroundColor = UIColor.whiteColor()
    }
}
