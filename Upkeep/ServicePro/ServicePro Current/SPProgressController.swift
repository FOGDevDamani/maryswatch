//
//  SPProgressController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/28/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class SPProgressController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var maintenanceProgressTable: UITableView!
    @IBOutlet weak var newRequestTable: UITableView!
    
    var newRenterRequest: Results<RenterRequest>?
    var uuidForRequest = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        newRequestTable.reloadData()
    }

   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newRenterRequest!.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        uuidForRequest = newRenterRequest![indexPath.row].requestId
        
        performSegue(withIdentifier: "NewRenterRequest", sender: self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell1: SPProgressCell
        var cell2: NewRequestCell
        let cellIdentifier1 = "SPProgressCell"
        let cellIdentifier2 = "NewRequestCell"
        
        if tableView == self.maintenanceProgressTable {
            cell1 = tableView.dequeueReusableCell(withIdentifier: cellIdentifier1, for: indexPath) as! SPProgressCell
            
            cell1.addressLabel.text = "Address, unit #, City, ST"
            cell1.percentageLabel.text = "%"
            cell1.completionLabel.text = " / / "
            
            return cell1
            
        } else {
            cell2 = tableView.dequeueReusableCell(withIdentifier: cellIdentifier2, for: indexPath) as! NewRequestCell
            
            return cell2
        }
            
            
    }
    
    func fetchData() {
        let realm = try! Realm()
        
        newRenterRequest = realm.objects(RenterRequest.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NewRenterRequest" {
            if let spMaintenanceController = segue.destination as? SPMaintenanceRequestedController {
                spMaintenanceController.spPassedUUID = uuidForRequest
            }
        }
    }
    

    

}
