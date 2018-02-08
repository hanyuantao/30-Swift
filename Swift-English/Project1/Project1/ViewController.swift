//
//  ViewController.swift
//  Project1
//
//  Created by apple on 2018/2/7.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "图片浏览器"
        
//        navigationController?.setNavigationBarHidden(true, animated: false)
        
        navigationController?.navigationBar.prefersLargeTitles = true;
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if(item.hasPrefix("once_")){
                pictures.append(item);
                print(pictures);
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath);
        cell.textLabel?.text = pictures[indexPath.row];
        return cell;
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let detailVC = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            detailVC.selectPicture = pictures[indexPath.row];
            navigationController?.pushViewController(detailVC, animated: true);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

