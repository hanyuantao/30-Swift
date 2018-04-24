import UIKit


var str = "Hello Swift";
print(str);

//Int
var age = 1024;
print(age)
age  = 8_000_000
print(age);

//多行字符串
let mulStr = """
且归去
乐淘淘
做一闲人
对一张琴一壶酒一溪云
"""
print(mulStr);


let mulStr2 = """
且归去,\
乐淘淘,\
做一闲人,\
对一张琴一壶酒一溪云.
"""
print(mulStr2)

//Doble and Bolleans
var pi = 3.14
print(pi)
if(pi>0){
    print("\(pi)>0")
}
//
var score = 1024
var scoreStr = "You scroe was \(score)"

//常量
let PI = 3.14

//类型
let strType = "This is a String"
let strType1:String = "This is a String"
let number:Int = 1024

//Array
var array = [1,2,2,3]
print(array)
let name1 = "KONG"
let name2 = "HAN"
let name3 = "LI"
var array1 = [name1,name2,name3]
print(array1)
print(array1[0])
array1.append("ZHANG")
array1.remove(at: 0)
print(array1)

//Set
let corlors = Set(["red","green","blue"])
print(corlors);
print(corlors.first)


//Tuples
var name111 = (first:"Tayler", last:"swift")

//Dictionary
let height = [
    "Tayler Swift": 178,
    "ED Sheeren" :173
]

print(height);


