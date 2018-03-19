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
        case 1:
            drawCircle()
        case 3:
            drawCheckerboard()
        default:
            break
        }
    }
    
    
    //绘制长方形
    func drawRect(){
        let render = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        let img = render.image { (ctx) in
            let rectangle = CGRect(x: 0, y: 0, width: 512, height: 512)
            ctx.cgContext.setFillColor(UIColor.red.cgColor);
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor);
            ctx.cgContext.setLineWidth(10);
            
            ctx.cgContext.addRect(rectangle);
            ctx.cgContext.drawPath(using: .fillStroke);
            
        }
        imageView.image = img;
    }
    
    func drawCircle(){
        let render  = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        
        let img = render.image { (ctx) in
            let rectangle = CGRect(x: 0, y: 0, width: 300, height: 300)
            
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            
            ctx.cgContext.addEllipse(in: rectangle);
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        imageView.image = img
    }
    
    func drawCheckerboard(){
        let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
        let img = renderer.image { ctx in
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            for row in 0..<8{
                for col in 0..<8 {
                    if(row + col) % 2 == 0 {
                        ctx.cgContext.fill(CGRect(x: col * 64, y: row * 64, width: 64, height: 64))
                    }
                    
                }
            }
        }
        imageView.image = img


    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




































