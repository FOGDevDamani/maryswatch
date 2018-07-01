//
//  OwnerMaintenanceRequestCell.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class OwnerMaintenanceRequestCell: UITableViewCell {
    
    @IBOutlet weak var ownerRequestType: UITextField!
    @IBOutlet weak var ownerRequestUnitNumber: UITextField!
    @IBOutlet weak var ownerRequestRoom: UITextField!
    @IBOutlet weak var ownerRequestDescription: UITextField!
    @IBOutlet weak var ownerRequestCamera: UIButton!
    
    
    func saveTableData() {
        let saveTableData = OwnerRequest()
        saveTableData.setValue(self.ownerRequestType!.text, forKey: "ownerRequestType")
        saveTableData.setValue(self.ownerRequestUnitNumber!.text, forKey: "ownerRequestUnitNumber")
        saveTableData.setValue(self.ownerRequestRoom!.text, forKey: "ownerReqestRoom")
        saveTableData.setValue(self.ownerRequestDescription!.text, forKey: "ownerRequestDescription")
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(saveTableData)
                print("added \(saveTableData.ownerRequestType) to Realm Database")
                print("added \(saveTableData.ownerUnitNumber) to Realm Database")
                print("added \(saveTableData.ownerRoom) to Realm Database")
                print("added \(saveTableData.ownerProblemDescription) to Realm Database")
            }
        } catch {
            print(error)
        }
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
