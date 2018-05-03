//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var someInt = [String]()
print(someInt)

someInt.append("2")
someInt.append("2")
someInt.append("2")


var threeArray = Array(repeating: "-", count: 10)
var mulArray = threeArray + someInt
print(mulArray)


var shopingList:[String] = ["E","D"]
print(shopingList)


print(shopingList[...1])

for item in mulArray{
    print(item)
}

for (index,value) in shopingList.enumerated() {
    print("\(index)---\(value)");
}


//Set
var letterws = Set<Character>()
print(letterws);

letterws.insert("D")
var favFoods:Set<String> = ["COCA","Bread"]
print(favFoods);

var favoriteGenres = ["Rock", "Classical", "Hip hop"]
print(type(of: favoriteGenres));
var favoriteGenres1:Set = ["Rock", "Classical", "Hip hop"]
print(type(of: favoriteGenres1));

for genral in favoriteGenres{
    print(genral);
}

for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

//Dictionary
//print("----------Dictionary-------------");

var nameOfInteger = [Int:String]()
print(nameOfInteger)

nameOfInteger[6] = "DOG"
print(nameOfInteger);
var airplane = ["BJ":"BEIJING","JN":"JINAN"];
print(airplane);
airplane.updateValue("CHINA", forKey: "BJ")
print(airplane);
if let oldPlane = airplane.updateValue("Jinan", forKey: "JN"){
    print(oldPlane);
}

for(code ,name) in airplane{
    print("\(code) is \(name)");
}

