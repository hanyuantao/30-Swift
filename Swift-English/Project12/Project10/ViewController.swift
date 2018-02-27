//
//  ViewController.swift
//  Project10
//
//  Created by apple on 2018/2/26.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit
import Photos

class ViewController: UICollectionViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {
   
    var people = [PersonCodable]()
    let pictureVC = UIImagePickerController()
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Project10-CollectionView"
        // Do any additional setup after loading the view, typically from a nib.
        

        //使用 NSCoding 协议
//        if let savedData = defaults.object(forKey: "people") as? Data {
//            people = NSKeyedUnarchiver.unarchiveObject(with: savedData) as! [Person]
//        }
        
        //使用 Codable
        if let savedCoableData = defaults.object(forKey: "people") as? Data {
            let jsondecoder = JSONDecoder()
            do{
                people = try jsondecoder.decode([PersonCodable].self, from: savedCoableData)
            }
            catch{
                
            }
        }
        
        checkPermission()
        
        pictureVC.allowsEditing = true
        pictureVC.sourceType = .photoLibrary
        pictureVC.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(addNewPerson))
        
    }
    
    func checkPermission() {
        let photoAuthorizationStatus = PHPhotoLibrary.authorizationStatus()
        switch photoAuthorizationStatus {
        case .authorized:
            print("Access is granted by user")
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization({
                (newStatus) in
                print("status is \(newStatus)")
                if newStatus ==  PHAuthorizationStatus.authorized {
                    /* do stuff here */
                    print("success")
                }
            })
            print("It is not determined until now")
        case .restricted:
            // same same
            print("User do not have access to photo album.")
        case .denied:
            // same same
            print("User has denied the permission.")
        }
    }
    
    @objc func addNewPerson(){
        
        present(pictureVC, animated: true) {
            
        };
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentsDirect = paths[0]
        return documentsDirect
    }
    
    //NSCoding 模式
    func save() {
        let savedData = NSKeyedArchiver.archivedData(withRootObject: people)
        defaults.set(savedData, forKey: "people")
    }
    
    
    //codable 模式
    func saveCoable(){
        let jsonEcode = JSONEncoder()
        if let savedData = try? jsonEcode.encode(people) {
            defaults.set(savedData, forKey: "people")
        }else {
            print("Failed to save people.")
        }
    }
    
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        guard let image  = info[UIImagePickerControllerEditedImage] as? UIImage else {
            return
        }
        let imageName = UUID().uuidString;
//        var dirPaths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let imagePath = getDocumentsDirectory().appendingPathComponent(imageName)
        
        if let jpegData = UIImageJPEGRepresentation(image, 80) {
            try? jpegData.write(to: imagePath)
        }
        
//        let person = Person(name: "Unknown", image: imageName)
//        self.people.append(person)
        
        let personCoable = PersonCodable(name: "Unknown", image: imageName)
        self.people.append(personCoable)
        saveCoable()
        
        self.collectionView?.reloadData()
        
        dismiss(animated: true, completion: nil)
    }
    

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Person", for: indexPath) as! PersonCell
        
        let person = people[indexPath.row]

        cell.name.text = person.name
        let path = getDocumentsDirectory().appendingPathComponent(person.image)
        cell.imageView.image = UIImage(contentsOfFile: path.path)
        
        cell.imageView.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        cell.imageView.layer.borderWidth = 2
        cell.imageView.layer.cornerRadius = 3
        cell.layer.cornerRadius = 7

        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let person = people[indexPath.item]
        let alertVC = UIAlertController(title: "RenamePerson", message: nil, preferredStyle: .alert)
        alertVC.addTextField()
        alertVC.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (alertVC) in
            
        }))
        
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: { [unowned self,alertVC] _ in
            let newName = alertVC.textFields![0]
            person.name = newName.text!
            self.collectionView?.reloadData()
            self.saveCoable()
        }))
        
        present(alertVC, animated: true)
        
    }
}
