//
//  ViewController.swift
//  SwiftDemo
//
//  Created by apple on 2018/2/5.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}






































