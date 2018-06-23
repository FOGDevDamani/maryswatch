//
//  SPMaterialsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class ServiceProMaterialsController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var materialsView: UITableView!
    
    var defaults = UserDefaults.standard
    
    var materialsArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        defaults.set(materialsArray, forKey: "materialsArray")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materialsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MaterialsCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MaterialsCell
            else {
                fatalError("Dequed Cell is not an instance of MaterialsCell")
        }
        
        cell.materialsDescription.text = materialsArray[indexPath.row]
        cell.materialsQuantity.text = materialsArray[indexPath.row]
        cell.materialsAmount.text = materialsArray[indexPath.row]
        cell.materialsTotal.text = materialsArray[indexPath.row]
        
        func calculateTotal() {
            let materialQuantity: Double? = Double(cell.materialsQuantity.text!)
            let materialAmount: Double? = Double(cell.materialsAmount.text!)
            let convert = materialQuantity! + materialAmount!
            let convertText = String(convert)
            cell.materialsLabel.text = convertText
            
        }
        
        func textFieldShouldReturn(textfield: UITextField) -> Bool {
            switch textfield {
            case cell.materialsDescription:
                cell.materialsQuantity.becomeFirstResponder()
            default:
                cell.materialsAmount.resignFirstResponder()
            
            }
           calculateTotal()
            return true
        }
        
        
        
        return cell
    }
    
    

}




