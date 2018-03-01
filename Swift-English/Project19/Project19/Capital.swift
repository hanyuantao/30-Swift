//
//  Capital.swift
//  Project19
//
//  Created by apple on 2018/3/1.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit
import MapKit


class Capital: NSObject,MKAnnotation {
    
    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String

    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }
    
}
