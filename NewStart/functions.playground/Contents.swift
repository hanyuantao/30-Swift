//: Playground - noun: a place where people can play

import UIKit
func greet(person:String) -> String{
    print("Hello " + person);
    return "Hello " + person;
}
greet(person: "ONCE");

func greetAgain(person: String) -> String {
    return "Hello again, " + person + "!"
}

func sayHello()->String{
    return "Hello";
}
print(sayHello());

func greet(person:String, alreadyGreeted:Bool)->String{
    if alreadyGreeted {
        return greetAgain(person: person);
    }else{
        return greet(person: person);
    }
}
print(greet(person: "ONCE", alreadyGreeted: true))


//多个返回值
func minMax(array:[Int]) -> (min:Int, max:Int)?{
    if array.isEmpty {
        return nil;
    }
    var currentMin = array[0];
    var currentMax = array[0];
    for value in array {
        if value < currentMin {
            currentMin = value
        }
        else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax);
}
print(minMax(array: [1,2,2,3,43,4,4]))

//可选元组返回类型


print(minMax(array: []))

func greet(person:String , from Hometown:String){
    print(Hometown);
}


func fuckhello(name:String = "KK"){
    print(name);
}
fuckhello()

//可变形参
func arithmethicMean(_ numbers:Double...) -> Double{
    var total:Double = 0
    for item in numbers {
        total += item;
    }
    return total/Double(numbers.count);
}

print(arithmethicMean(1,2,3,3,4,4,1024,5,5,6));

func swapTwoInts(_ a:inout Int, _ b: inout Int){
    let temp = a;
    a = b;
    b = temp;
}
var someInt = 100;
var anotherInt = 1000;
swapTwoInts(&someInt, &anotherInt);
print(someInt, anotherInt);

// 函数类型 (Int, Int) -> Int
func addTowInts (_ a:Int, _ b:Int)->Int{
    return a + b;
}

func multiplyTowInts (_ a:Int, _ b:Int)->Int{
    return a * b;
}

print(addTowInts(100, 100));

var mathFunction :(Int ,Int)->Int;
mathFunction = multiplyTowInts;
print(mathFunction(1,2));


func printMathResult (_ mathFunction:(Int ,Int)->Int,_ a: Int, _ b: Int) ->Int{
    return mathFunction(a,b);
}

print(printMathResult(addTowInts, 2,2));

//函数作为返回
func stepForward(_ input:Int) ->Int{
    return input + 1;
}
func backBakcward(_ input:Int) ->Int{
    return input - 1;
}

func chooseStepFunc (_ backwards: Bool) -> (Int)->Int{
    return backwards ? backBakcward : stepForward;
}
var currentValue = 1024;
let moveNewTo = chooseStepFunc(currentValue < 0);
print(moveNewTo);




