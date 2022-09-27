//
//  CollectionViewController.swift
//  A29_Monday_26
//
//  Created by exam on 9/27/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDataSource{

    var appDel = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appDel.stuArrayGlobal.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        let itemCell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! collectionViewClass
        itemCell.txtName.text = appDel.stuArrayGlobal[indexPath.row].stuName
        itemCell.txtCompanyName.text = appDel.stuArrayGlobal[indexPath.row].companyName
        
    
        return itemCell
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
