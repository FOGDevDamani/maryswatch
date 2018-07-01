//
//  MaterialsCell.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift



class MaterialsCell: UITableViewCell, UITextFieldDelegate{

    @IBOutlet weak var totalEstimatedMaterial: UILabel!
    @IBOutlet weak var materialTotal: UILabel!
    @IBOutlet weak var materialDescription: UITextField!
    @IBOutlet weak var materialQuantity: UITextField!
    @IBOutlet weak var materialAmount: UITextField!
    
   
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    func saveMaterialsData() {
        let saveMaterials = SPMaterialsRequest()
        saveMaterials.setValue(self.materialDescription!.text, forKey: "materialDescriptiopn")
        saveMaterials.setValue(self.materialQuantity!.text, forKey: "materialQuantity")
        saveMaterials.setValue(self.materialAmount!.text, forKey: "materialAmount")
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(saveMaterials)
                print("added \(saveMaterials.materialDescription) to Realm Database")
                print("added \(saveMaterials.materialQuantity) to Realm Database")
                print("added \(saveMaterials.materialAmount) to Realm Database")
                print("added \(saveMaterials.materialTotal) to Realm Database")
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
