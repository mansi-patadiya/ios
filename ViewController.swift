//
//  ViewController.swift
//  A29_Monday_03_10
//
//  Created by exam on 10/3/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myCell
        cell.stuName.text="Mansi"
        cell.stuRollNo.text="29"
        
        return cell
    }

    
    @IBAction func goToNext(_ sender: Any) {
        
        performSegue(withIdentifier: "next", sender: self)
    }
}

