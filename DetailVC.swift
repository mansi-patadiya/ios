//
//  DetailVC.swift
//  A29_Monday_26
//
//  Created by exam on 9/26/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    var detailArray = [Student]()
    var indexNo=0
    override func viewDidLoad() {
        super.viewDidLoad()
        print(detailArray[indexNo].stuName)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
