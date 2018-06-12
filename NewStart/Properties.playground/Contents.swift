import UIKit


//存储属性:存储常量或变量作为实例的一部分
struct FixedLenghtRange{
    var firstValue:Int;
    let lenght:Int
}

var rangeItems = FixedLenghtRange(firstValue: 0, lenght: 3)
rangeItems.firstValue = 6;
//rangeItems.lenght = 5;//常量无法修改
print(rangeItems.firstValue);


let rangeFourItems = FixedLenghtRange(firstValue: 0, lenght: 5);
//rangeItems.lenght = 6;//常量再无法修改

//延迟存储属性：延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用lazy来标示一个延迟存储属性。

class DataImporter{
    var fileName = "data.TXT"
}
class DataManger{
    lazy var improter = DataImporter()
    var data = [String]()
}
let manager = DataManger()
manager.data.append("Some data")
manager.data.append("Some more data")
print(manager.improter.fileName);//第一次访问的时候才创建


//计算属性
struct Point {
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0
    var height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center:Point{
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY);
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width)/2;
            origin.y = newCenter.y - (size.height)/2;
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10.0, height: 10.0))
let initSqureCenter = square.center
print(initSqureCenter);
square.center = Point(x: 100.0, y: 100.0)
print(square.origin);

//便捷 setter 声明 如果没有新参数名，可以直接使用 newValue
struct AlternativeRect {
    var origin  = Point()
    var size = Size()
    var center:Point{
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set{
            origin.x = newValue.x - (size.width)/2;
            origin.y = newValue.y - (size.height)/2;
        }
    }
}

//只读计算属性 :只有 getter 没有 setter 的计算属性就是只读计算属性。只读计算属性总是返回一个值，可以通过点运算符访问，但不能设置新的值。

struct Cuboid {
    var width=0.0, height=0.0, depth=0.0
    var volume:Double{
        get{
            return width * height * depth
        }
    }
}
let cuboid345 = Cuboid(width: 3, height: 4, depth: 5)
print(cuboid345.volume);

cuboid345.volume = 100;
print(cuboid345.volume);


