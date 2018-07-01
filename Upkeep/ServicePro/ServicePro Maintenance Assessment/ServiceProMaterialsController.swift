//
//  SPMaterialsController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class ServiceProMaterialsController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var materialsView: UITableView!

    
    var spMaterialsRequest: Results<SPMaterialsRequest>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MaterialsCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MaterialsCell
            else {
                fatalError("Dequed Cell is not an instance of MaterialsCell")
        }
        
        cell.materialDescription.text = ""
        cell.materialQuantity.text = ""
        cell.materialAmount.text = ""
        cell.materialTotal.text = "Total"
        
        return cell
        
    
    }
    

}




