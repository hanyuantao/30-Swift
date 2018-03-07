//
//  Currying.swift
//  SwiftTips
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class Currying: NSObject {
    func add(num:Int) -> Int {
        return num + 1
    }
    
    func addTo(_ adder:Int) -> (Int) -> Int {
        return{
            (num:Int) -> Int in
            return num + adder
        }
    }
    
    func greaterThan(compare:Int) -> (Int)->Bool {
        return{ $0 > compare}
    }
    
    func demo() {
        let addtwo = addTo(2)
        let result = addtwo(100)
        print(result);
        
        let compareTo = greaterThan(compare: 100)
        let resultCompare = compareTo(100)
        print(resultCompare)
    }
    
    //柯里化是一种量产相似方法的好办法，可以通过柯里化一个方法模板来避免写出很多重复代码， 也方便了今后维护。

    
}
