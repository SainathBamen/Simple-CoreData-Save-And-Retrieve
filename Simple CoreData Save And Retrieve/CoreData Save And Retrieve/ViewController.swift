//
//  ViewController.swift
//  CoreData Save And Retrieve
//
//  Created by Sainath Bamen on 03/07/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    @IBOutlet weak var showLabel: UILabel!
    
    var cData = [ChildrenData]()
    @IBOutlet weak var myText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func AddNewChildren(_ sender: Any) {
        let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let childData = NSEntityDescription.insertNewObject(forEntityName: "ChildrenData", into: context) as! ChildrenData
        childData.childname = myText.text
        do{
            try context.save()
            print("Data has been successfully saved")
            myText.text = ""
            let cData = try context .fetch(ChildrenData.fetchRequest()) as! [ChildrenData]
            print("Data Has Fetched Successfully")
            for childObj in cData{
                print(childObj.childname!)
            }
        }
        catch{
            print("Error Occured while Accessing Data")
        }
        
        
    }
    
    @IBAction func FetchAllChildrens(_ sender: Any) {
        
        
        let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
        
        let context = appDelegate.persistentContainer.viewContext
        do{
            
        }catch{
            print("Error Occured while Accessing Data")
        }
    
    }
    
    
}

