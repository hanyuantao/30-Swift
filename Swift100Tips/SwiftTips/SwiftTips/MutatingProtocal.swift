//
//  MutatingProtocal.swift
//  SwiftTips
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

protocol Vehicle {
    var numberOfWheels:Int{get}
    var color: UIColor{get set}
    mutating func changeColor()
}

struct MyCar : Vehicle {

    let numberOfWheels = 4
    var color = UIColor.blue
    
    mutating func changeColor() {
        color = .red
    }
    
}


/*在使用class来实现带有mutaing的方法的协议时，具体实现的前面是不需要加mutaing修饰的，因为class可以随意更改自己的成员变量。所以说在协议里用mutaing修饰
方法，对于class的实现是完全透明，可以当作不存在的
 */
class MutatingProtocal: NSObject, Vehicle {
    var numberOfWheels: Int
    var color: UIColor
    
    func demo() {
        var car = MyCar()
        print(car.color.cgColor)
        car.changeColor()
        print(car.color.cgColor)
    }
    
    override init() {
        color = .orange
        self.numberOfWheels = 1
    }
    
    func changeColor() {
        self.color = .black
    }
    
}
