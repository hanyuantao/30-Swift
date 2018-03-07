//
//  ViewController.swift
//  Project27
//
//  Created by apple on 2018/3/6.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentDrwaType = 0;
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawRect()
    }

    
    @IBAction func redrawTapped(_ sender: Any) {
        currentDrwaType += 1
        if currentDrwaType > 5 {
            currentDrwaType = 0
        }
        
        switch currentDrwaType {
        case 0:
            drawRect()
        default:
            break
        }
    }
    
    
    //绘制长方形
    func drawRect(){
        let render = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        let img = render.image { (ctx) in
            
        }
        imageView.image = img;
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




































