//
//  FunctionDemo.swift
//  SwiftDemo
//
//  Created by apple on 2018/2/6.
//  Copyright © 2018年 com. All rights reserved.
//

import Foundation
class FucntionClass {
    func createFunction(name:String) -> String {
        return "Fucntion Name";
    }
    
    func favoriteAlbum() {
        print("My favorite is Fearless")
    }
    
    func showPerson(name:String, age:Int, height:Double){
        print([name, age , height]);
    }
    
//    External and internal parameter names
    func countLettersInString(string: String) {
        print("The string \(string) has \(string.count) letters.")
    }
    
    func countLettersInString(myString str: String) {
        print("The string" + str);
    }
    
    func countLettersInString(_ str: String) {
        print("The string \(str) has \(str.count) letters.")
    }
    
    func counterLetters(in string:String){
        print("The string \(string) has \(string.count) letters.")
    }
    
//    Optionals
    func getHaterStatus() -> String? {
        return nil
    }
    
    func getHaterStatus(weather: String) -> String? {
        if weather == "sunny" {
            return nil
        } else {
            return "Hate"
        }
    }
    
    func takeHaterAction(status: String) {
        if status == "Hate" {
            print("Hating")
        }
    }
    
    func position(of string:String , in array:[String]) -> Int {
        for i in 0...array.count {
            if array[i] == string{
                return i
            }
        }
        return 0
    }
    
    /*
     *Please be careful, though: if you try this on a variable that does not have a value, your code will crash.
     Force unwrapping optionals
     */
    
    

    
}
