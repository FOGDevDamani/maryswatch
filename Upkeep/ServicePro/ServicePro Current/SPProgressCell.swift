//
//  SPProgressCell.swift
//  maryswatch
//
//  Created by Damani Turner on 6/28/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class SPProgressCell: UITableViewCell {

    @IBOutlet weak var jobNumberButton: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var percentageLabel: UILabel!
    @IBOutlet weak var completionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
