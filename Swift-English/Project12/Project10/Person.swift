//
//  Person.swift
//  Project10
//
//  Created by apple on 2018/2/26.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class Person: NSObject,NSCoding {
    var name:String
    var image:String
    
    init(name:String, image:String) {
        self.name = name
        self.image = image
    }
    
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        image = aDecoder.decodeObject(forKey: "image") as! String
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(image, forKey: "image")
    }
    
}
