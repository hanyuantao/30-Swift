//
//  HomeViewController.swift
//  CarouselEffect
//
//  Created by An on 16/7/21.
//  Copyright © 2016年 once. All rights reserved.
//  http://www.jianshu.com/p/33b6fa5dc3da
//  http://allluckly.cn/ios之swift初探/Swift纯代码走进UICollectionView

import UIKit

class HomeViewController: UIViewController {

    let bgImage: UIImageView = UIImageView(image: UIImage(named: "blue"))
    
    var interests = Interest.createInterests()
    let Indentifier = "InterestCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bgImage.frame = self.view.frame
        self.view.addSubview(bgImage)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSizeMake(300, 400)//CELL全局尺寸
        layout.scrollDirection = UICollectionViewScrollDirection.Horizontal

        let collectionView = UICollectionView(frame: CGRectMake(0, 0, 300, 400), collectionViewLayout: layout)
        collectionView.center = self.view.center
        self.view.addSubview(collectionView)
        collectionView.backgroundColor = UIColor.redColor()
        collectionView.registerClass(InterestCollectionViewCell.classForCoder(), forCellWithReuseIdentifier:Indentifier)
        collectionView.dataSource = self
        collectionView.delegate  = self
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//拓展实现Collection 代理方法
extension HomeViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Indentifier, forIndexPath: indexPath) as! InterestCollectionViewCell
        if (cell == nil) {
            cell = InterestCollectionViewCell(frame: <#T##CGRect#>)
        }
        cell.interest = self.interests[indexPath.item]
        return cell
    }
    
    //返回cell 上下左右的间距
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets{
        return UIEdgeInsetsMake(0, 0, 0, 0)
    }
}

