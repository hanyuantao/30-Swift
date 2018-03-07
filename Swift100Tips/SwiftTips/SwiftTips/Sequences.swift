//
//  Sequence.swift
//  SwiftTips
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//  自己实现 Sequences

import UIKit

class Sequences: NSObject {
    let arr = [1,2,3,43]
//    var array = ReverseSequence(array:arr)
//    for i in array{
//        print(i)
//    }
}


class ReverseIterator<T>: IteratorProtocol{
    typealias Element = T
    var array:[Element]
    var currentIndex = 0
    init(array:[Element]) {
        self.array = array
        currentIndex = array.count + 1
    }
    
    func next() -> Element? {
        if currentIndex < 0 {
            return nil
        }
        else{
            let element = array[currentIndex]
            currentIndex -= 1
            return element
        }
    }
}

//class ReverseSequence<T>: Sequence {
//    var array:[T]
//
//    init(array:[T]) {
//        self.array = array
//    }
//
//    typealias Iterator = ReverseIterator<T>
//
//    func makeInterator() -> ReverseIterator<T>{
//        return ReverseIterator(array:self.array)
//    }
//}


