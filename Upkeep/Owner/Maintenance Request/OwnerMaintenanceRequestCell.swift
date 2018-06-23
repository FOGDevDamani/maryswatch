//
//  OwnerMaintenanceRequestCell.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class OwnerMaintenanceRequestCell: UITableViewCell {
    
    @IBOutlet weak var ownerRequestType: UITextField!
    @IBOutlet weak var ownerRequestUnitNumber: UITextField!
    @IBOutlet weak var ownerRequestRoom: UITextField!
    @IBOutlet weak var ownerRequestDescription: UITextField!
    @IBOutlet weak var ownerRequestCamera: UIButton!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
