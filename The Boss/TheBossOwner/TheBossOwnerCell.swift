//
//  TableViewCell.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class TheBossOwnerCell: UITableViewCell {
    
    @IBOutlet weak var theBossMaintenance: UILabel!
    @IBOutlet weak var priorityAlert: UIButton!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
