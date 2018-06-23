//
//  RenterHistoryCell.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class RenterHistoryCell: UITableViewCell {

    
    @IBOutlet weak var jobNumber: UIButton!
    @IBOutlet weak var jobAddress: UILabel!
    @IBOutlet weak var jobSummary: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
