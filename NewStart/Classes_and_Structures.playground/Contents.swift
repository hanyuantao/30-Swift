import UIKit



//Struct

struct Resolution {
    var width = 0;
    var height = 0;
}


//Class

class VideoMode {
    var resolution = Resolution();
    var interlaced = false;
    var frameRate = 0.0;
    var name: String?
}

let classDemo = VideoMode()
let structDemo = Resolution()

print(structDemo.width)

classDemo.resolution.width = 1280
print(classDemo.resolution)

/*
 值类型被赋予给一个变量、常量或者本身被传递给一个函数的时候，实际上操作的是其的拷贝。
 在 Swift 中，所有的基本类型：整数（Integer）、浮点数（floating-point）、布尔值（Boolean）、字符串（string)、数组（array）和字典（dictionary），都是值类型，并且都是以结构体的形式在后台所实现。
*/

var hd = Resolution(width: 1920, height: 1080)
var cinema = hd
print(hd)
cinema.width = 2048
print(cinema);


//class 是引用类型
let tenEight = VideoMode()
tenEight.resolution = hd
tenEight.interlaced = true
tenEight.name = "1080i"
tenEight.frameRate = 25.0

let anoTenEight = tenEight;
anoTenEight.name = "i1080";
print(tenEight.name);
print(anoTenEight.name);

//属性观察器:"属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察器，甚至新的值和现在的值相同的时候也不例外"
class StepCounter{
    var totalSteps:Int = 0 {
        willSet{
            print("new value = \(newValue)")
        }
        didSet{
            print("old value = \(oldValue)")
        }
    }
}

var step = StepCounter()
step.totalSteps = 1024
step.totalSteps = 5

//类型属性语法:
struct SomeStructure{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int{
        return 1
    }
}

enum someEnum {
    static var storedTypeProperty = "Some value";
    static var computedTypeProperty : Int{
        return 6;
    }
}

print(SomeStructure.computedTypeProperty)//跟 OC 中的静态方法很像全局

