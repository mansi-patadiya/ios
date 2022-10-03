//
//  myCell.swift
//  A29_Monday_03_10
//
//  Created by exam on 10/3/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit

class myCell: UITableViewCell {

    @IBOutlet weak var stuName: UILabel!
    
    @IBOutlet weak var stuRollNo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
