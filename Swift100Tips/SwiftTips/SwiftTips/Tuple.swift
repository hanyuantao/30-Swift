//
//  Tuple.swift
//  SwiftTips
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class Tuple: NSObject {
    func swapMe1<T>(a: inout T, b: inout T) {
        let temp = a
        a = b
        b = temp
    }
    
    func swapMe2<T>(a: inout T, b:inout T) {
        (a,b) = (b,a)
    }
    
    func demo(){
        var a = 1
        var b = 2
        swapMe1(a: &a, b: &b)
        print(a,b)
        swapMe2(a: &a, b: &b)
    }
    
}
