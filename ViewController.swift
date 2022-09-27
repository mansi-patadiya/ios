//
//  ViewController.swift
//  A29_Monday_26
//
//  Created by exam on 9/26/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stuName: UITextField!
    
    @IBOutlet weak var companyName: UITextField!
    
//    var stuArray = [Student]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    commented for appdelegate operation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var obj = segue.destination as! TableviewVC
//        obj.studentArray = stuArray
//    }
    @IBAction func NextAction(_ sender: Any) {
        performSegue(withIdentifier: "NextTV", sender: self)
    }

    @IBAction func addDataAction(_ sender: Any)
    {
        var stuObj = Student()
//        normal way toadd data in array
        stuObj.stuName = stuName.text!
        stuObj.companyName = companyName.text!
//        stuArray.append(stuObj)
        
//        using appdelegete array
        var appDel = UIApplication.shared.delegate as! AppDelegate
        appDel.stuArrayGlobal.append(stuObj)
    }
    
    
    @IBAction func gotocollectionAction(_ sender: Any) {
        performSegue(withIdentifier: "gotocollection", sender: self)
    }
}

