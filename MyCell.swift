//
//  MyCell.swift
//  A29_Monday_26
//
//  Created by exam on 9/26/22.
//  Copyright © 2022 mansi. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var lblLeft: UILabel!
    
    @IBOutlet weak var lblRight: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
