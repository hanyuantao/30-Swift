//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let emptyStr = ""
var emptyString = String()

if emptyString.isEmpty{
    print("This is a empty string")
}
//Swift 的 String类型是一种值类型。如果你创建了一个新的 String值， String值在传递给方法或者函数的时候会被复制过去，还有赋值给常量或者变量的时候也是一样
var valueStr = emptyString
valueStr = "TEST"
print(valueStr)
print(emptyString)


for charactor in valueStr{
    print(charactor);
}

let string1 = "hello"
let string2 = "Swift"

var welcome = string1 + string2
print("THis is a string \(welcome)")

