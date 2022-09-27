//
//  TableviewVC.swift
//  A29_Monday_26
//
//  Created by exam on 9/26/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit

class TableviewVC: UIViewController,UITableViewDataSource,UITableViewDelegate{

    var studentArray = [Student]()
    var selectedIndex=0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studentArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyCell
        cell.lblLeft.text = studentArray[indexPath.row].stuName
        cell.lblRight.text = studentArray[indexPath.row].companyName
        
        return cell
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var obj = segue.destination as! DetailVC
        obj.detailArray = studentArray
        obj.indexNo = selectedIndex
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex=indexPath.row
        performSegue(withIdentifier: "detail", sender: self)
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
