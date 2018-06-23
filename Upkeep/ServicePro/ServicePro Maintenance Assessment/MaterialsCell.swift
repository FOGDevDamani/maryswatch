//
//  MaterialsCell.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class MaterialsCell: UITableViewCell {

    @IBOutlet weak var materialsDescription: UITextField!
    @IBOutlet weak var materialsQuantity: UITextField!
    @IBOutlet weak var materialsAmount: UITextField!
    @IBOutlet weak var materialsLabel: UILabel!
    @IBOutlet weak var materialsTotal: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
