//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground";
print(str);

let names = ["Chirs", "Bob","Alex","Daniella","Ella"];
func backward(_ s1:String , _ s2:String) ->Bool{
    return s1 > s2;
}
var reversedNames = names.sorted(by: backward);

//闭包的表达式
//{(parameters) -> (return type) in
//    statements
//}
reversedNames = names.sorted(by: { (s1:String, s2:String) -> Bool in
    return s1 > s2;
});

//从语境中推断类型
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print(reversedNames);


//从单表达式闭包隐式返回
reversedNames = names.sorted(by: {s1,s2 in s1 > s2})

//简写的实际参数名
reversedNames = names.sorted(by: {$0 > $1});

//运算符函数
reversedNames = names.sorted(by: > );

//奇巧淫技


//尾随闭包
func somefuncwithClosure(closure:()->Void){
    print("somefuncwithClosure");
}

somefuncwithClosure {
    print("Done");
}

reversedNames = names.sorted(){$0 > $1}
reversedNames = names.sorted{$0 > $1}

let digitNames = [
    0: "Zero",1: "One",2: "Two",  3: "Three",4: "Four",
    5: "Five",6: "Six",7: "Seven",8: "Eight",9: "Nine"
]

let numbers = [8,16,30,40];

let strings = numbers.map{
    (number) -> String in
    var number = number;
    var output = "";
    repeat{
        output = digitNames[number % 10]! + output;
        number /= 10
    }while number > 0;
    return output;
}
print(strings);





