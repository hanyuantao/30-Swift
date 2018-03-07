//
//  AutoClosure.swift
//  SwiftTips
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class AutoClosure: NSObject {
    
    func logIfTure(_ predicate: @autoclosure ()->Bool){
        if predicate() {
            print("True")
        }else{
            print("False")
        }
    }
    
    func demo(){
//        logIfTure { () -> Bool in
//            1>2
//        }
//
//        logIfTure{3>2}
        zhih
        logIfTure(1>0)
        
        var level :Int?
        let startLevel = 1
        let currentLevel = level ?? startLevel
        print(currentLevel)
    }
    
}
