//
//  ViewController.swift
//  SwiftDemo
//
//  Created by apple on 2018/2/5.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    enum WeatherType {
        case sun
        case cloud
        case rain
        case wind(speed:Int)
        case snow
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

//        basicDemo();
//        swithDemo();
//        methodsDemo();
//        optionChaining()
//        enumDemo();
//        structDemo();
//        propertyDemo()
//        staticDemo();
//        accessDemo()
        
        
    }
    
    //基础语法
    func basicDemo() -> Void {
        //Variable  & Constants
        var name = "Z.H"
        name  = "Once"
        let sex = "男"
        
        var names: String
        names = "H.Z"
        
        var zhidao = "Good"
        
        
        //Type of Data
        var latitude: Double
        latitude = 36.166667
        
        var longitude: Double
        longitude = -86.783333
        print(longitude);
        longitude = -86.7833333333
        print(longitude);
        
        var _: String = "Tim McGraw"
        
        //Operator
        var a = 10
        a+=1
        print(a)
        
        let name1 = "Tim McGraw"
        let name2 = "Romeo"
        let both = name1 + " and " + name2
        print("both = \(both)");
        
        //String interpolation
        print("both = \(both)");
        
        //Array
        var evenNumbers = [1,2,3,4,5,6];
        print(evenNumbers);
        
        var songs:[Any] = ["Shake it Off", "You Belong with Me", "Back to December",1024]
        print(songs);
        songs.append("Game Of Throne");
        print(songs[0]);
        print(type(of: songs));
        
        
        //        Dictionary
        var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
        print(person["first"]);
        
        var book = [
            "day1":"JS",
            "day2":"RN",
            "day3":"Swift"
        ]
        print(book["day3"]);
        
        
        book["day4"] = "Scola"
        print(book);
        
        //        Conditional statements
        var action: String
        var person1 = "hater"
        
        if person1 == "word"{
            print(person1)
        }else{
            print("word")
        }
        
        //Loop
        for i in 1...10{
            print("1 x 10 is \(i * 10)")
        }
        
        var str = "Fakers gonna"
        for _ in 1..<5{
            str += " fake"
            print(str);
        }
        //Looping over arrays
        for song in songs{
            print(song);
        }
        
        //Inner loops
        var people = ["players", "haters", "heart-breakers", "fakers"]
        var actions = ["play", "hate", "break", "fake"]
        
        for i in 0 ..< people.count {
            var str = "\(people[i]) gonna"
            
            for _ in 1 ... 5 {
                str += " \(actions[i])"
            }
            
            print(str)
        }
        
        //        While loops
        
        var counter = 0
        while true {
            print("count is now \(counter)");
            counter+=1;
            if counter > 100{
                break;
            }
        }
        
        
        let aSongs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]
        
        for song in aSongs {
            if song == "You Belong with Me" {
                continue
            }
            print("My favorite song is \(song)")
        }
    }
    
    //swich语法
    func swithDemo() {
        
        let liveAlbums = 5;
        
        switch liveAlbums {
        case 0...1:
            print("Youre just starting out");
        case 2...3:
            print("Youre just starting out1");
        case 4...5:
            print("Youre just starting out2");
        default:
            print("Youre just starting out default");
        }
    }
    
    //方法语法
    func methodsDemo(){
        let funcClass = FucntionClass()
        let name =  funcClass.createFunction(name: "Print Nmae")
        print(name);
        
        funcClass.showPerson(name: "Z.H", age: 32, height: 170)
        funcClass.countLettersInString(myString: "Good")
        funcClass.countLettersInString("SSS")
        funcClass.counterLetters(in: "DDDDD")
        print(funcClass.getHaterStatus() ?? "Game over");
        
        var status: String?
        status = funcClass.getHaterStatus(weather: "rainy")
        print(status ?? "Donedone");
        
        if let haterStatus = funcClass.getHaterStatus(weather: "rainy") {
            funcClass.takeHaterAction(status: haterStatus)
        }
        
        let items = ["James", "John", "Sally"]
        let jamesPisition = funcClass.position(of: "John", in: items);
        print(jamesPisition);
        
        print(items.index(of: "John") ?? "ddd")
        
    }
    
    func optionChaining(){
       
        func albumReleased(year: Int) -> String? {
            switch year {
            case 2006: return "Taylor Swift"
            case 2008: return "Fearless"
            case 2010: return "Speak Now"
            case 2012: return "Red"
            case 2014: return "1989"
            default: return nil
            }
        }
        let album = albumReleased(year: 2006)?.uppercased()
        print("The album is \(String(describing: album))")
        
    }
    
    //enum
    func enumDemo(){
        
        //Enum
        print([WeatherType.sun, WeatherType.wind]);
        let weather = WeatherType.snow
        
    }
    
    //Struct
    struct Person {
        var name:String
        var age:Int
        
        
        func discription(){
            print("The man \(name) he's age is \(age)")
        }
        
    }
    func structDemo() {
        var person = Person(name: "Z.H", age: 30)
        print([person.name, person.age])
        var anotherPerson = person;//复制独立的一份
        anotherPerson.name = "ONCE"
        print(anotherPerson, person);
        anotherPerson.discription()
    }
   
    //Class
    class PersonClass {
        var clothes: String
        var shoes: String
        
        //不需要 Func
        init(clothes:String, shoes:String) {
            self.clothes = clothes;
            self.shoes = shoes;
        }
        
        func discription(){
            print("PersonClass")
        }
        
    }
   
    class Doctor: PersonClass {
        override func discription() {
            print("Doctor");
        }
    }
    
    class Singer: PersonClass {
        var name: String
        var age: Int
        
        init(clothes:String, name: String, age: Int, shoes:String) {
        
            self.name = name
            self.age = age
            
            super.init(clothes: clothes, shoes: shoes)
            
        }
        
        func sing() {
            print("La la la la")
        }
        
    }
    
    //Property
    struct Team {
        //属性观察
        var name:String{
            willSet {
                showTeam(msg: "I'm changing from \(name) to \(newValue)")
            }
            didSet {
                showTeam(msg: "I just changed from \(oldValue) to \(name)")
            }
        }
        
        var score:Int{
            get{
                return 1024
            }
        }
        
        //Computed properties
        var totalScore:Int{
            set{
                totalScore = score + 1;
            }
            get{
                return score+1;
            }
        }
        
        func showTeam(msg:String){
            print("msg = \(msg)")
        }
    }
    
    func propertyDemo(){
        var team = Team(name: "FCB")
        team.name = "FFF"
        print(team.score);
        print(team.totalScore);
    }
    
//    Static properties and methods
    struct StaticStruct {
        static var favoriteSont = "Star"
        var name:String
        var age:Int
    }
    
    func staticDemo(){
        let fan = StaticStruct(name: "James", age: 25)
        print(fan.name);
        print(StaticStruct.favoriteSont);
    }
    
//    Access control
    class AceessClass {
        var age:String;
        private var name:String;
        init(age:String , name:String) {
            self.age = age;
            self.name = name;
        }
    }
    func accessDemo(){
        var staticClass = AceessClass(age: "111", name: "Z>H")
        print(staticClass.age);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
