//
//  PersonCodable.swift
//  Project10
//
//  Created by apple on 2018/2/27.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class PersonCodable: NSObject,Codable {
    
    var name:String
    var image:String
    
    init(name:String, image:String) {
        self.name = name
        self.image = image
    }
}
