//: Playground - noun: a place where people can play

import UIKit

class WorldCup {
    
    var teamNumber = 32
    
    func gameStart(startDate:Date){
        print(startDate);
    }
    
    func gameEnd(endDate:Date){
        print("Agentina");
    }
    
    func gamePlay(){
        print("Agentina Won");
    }
}

var russia = WorldCup()
print(russia.teamNumber)


