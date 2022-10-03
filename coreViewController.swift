//
//  coreViewController.swift
//  A29_Monday_03_10
//
//  Created by exam on 10/3/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit
import CoreData

class coreViewController: UIViewController {

    @IBOutlet weak var stuName: UITextField!
    
    @IBOutlet weak var stuRollNo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveAction(_ sender: Any) {
        
        //appDelegate Object
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        //helper class object
        let context = appDel.persistentContainer.viewContext
        
        //create table
        let entity = NSEntityDescription.entity(forEntityName: "Student", in: context)
        
//        create row
        let stuObject = NSManagedObject(entity: entity!, insertInto: context)
        
        stuObject.setValue(stuName.text, forKey: "name")
        stuObject.setValue(stuRollNo.text, forKey: "rollNo")
        
        //commit
        do {
            try context.save()
        } catch let err as NSError {
            print(err)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
