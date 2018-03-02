//
//  ViewController.swift
//  Project21
//
//  Created by apple on 2018/3/2.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController,UNUserNotificationCenterDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Regist", style: .plain, target: self, action: #selector(registLocal))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Schedule", style: .plain, target: self, action: #selector(scheduleLocal))
    }
    
    @objc func registLocal(){
        let center = UNUserNotificationCenter.current()
        
        center.removeAllPendingNotificationRequests()

        center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if granted{
                print("YES")
            }else{
                print("D'oh")
            }
        }
    }
    
    
    
    @objc func scheduleLocal(){
        
        registerCategories()
        
//        var dateComponents = DateComponents()
//        dateComponents.hour = 10
//        dateComponents.minute = 30
//        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        
        let center = UNUserNotificationCenter.current()
        // not required, but useful for testing!
        center.removeAllPendingNotificationRequests()

        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
       
        let content = UNMutableNotificationContent()
        content.title = "Hello Noti"
        content.body = "Hello notification wake up 6:00 am"
        content.categoryIdentifier = "customIdentifier"
        content.userInfo = ["customData":"fizzbuzz"]
        content.sound = UNNotificationSound.default()
        
        
        let reuqeust = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        center.add(reuqeust) { (error) in
            print(error.debugDescription);
        }
    }
    
    func registerCategories() {
        
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        
        let show = UNNotificationAction(identifier: "show", title: "Tell me more", options: .foreground)
        let category = UNNotificationCategory(identifier: "alarm", actions: [show], intentIdentifiers: [])
        center.setNotificationCategories([category])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        if let customDtaa = userInfo["customData"] as? String{
            print("Custom data received: \(customDtaa)")
            switch response.actionIdentifier{
                case UNNotificationDefaultActionIdentifier:
                    print("Default identifier")
            case "show":
                print("show more info")
            default:
                break
            }
        }
        completionHandler()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

