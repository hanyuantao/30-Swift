//
//  ViewController.swift
//  Project2
//
//  Created by apple on 2018/2/8.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button1.layer.borderWidth = 1;
        button2.layer.borderWidth = 1;
        button3.layer.borderWidth = 1;
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        buildCountries()
//        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
        correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3);
        title = countries[correctAnswer].uppercased()
        
        askQuestion(action:nil)
        
    }

    func askQuestion(action:UIAlertAction!) {
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }

    //构建数据
    func buildCountries(){
        countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        var title: String
        if (sender as AnyObject).tag == correctAnswer{
            title = "Correct"
            score += 1
            
            countries = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: countries) as! [String]
            correctAnswer = GKRandomSource.sharedRandom().nextInt(upperBound: 3);
            title = countries[correctAnswer].uppercased()

        } else {
            title = "Wrong"
            score -= 1
        }
        
        let mytext = "Your score is \(score)."
        let ac = UIAlertController(title: title, message: mytext, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
        present(ac,animated: true)
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

