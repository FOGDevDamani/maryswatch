//
//  RenterRequestController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class RenterRequestController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var renterHIstoryView: UITableView!
    
    var renterRequestArray: Results<RenterRequest>?
    var uuidForRequest = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fetchData()
        renterHIstoryView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return renterRequestArray!.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        uuidForRequest = renterRequestArray![indexPath.row].requestId
        
        performSegue(withIdentifier: "HistoryData", sender: self)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "RenterProgressCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? RenterHistoryCell else {
            fatalError("the dequed cell is not an instance of RenterHistoryCell")
        }
        
        let address = renterRequestArray![indexPath.row]
        let date = renterRequestArray![indexPath.row]
        
        cell.jobNumber.setTitle("1", for: .normal)
        cell.jobAddress.text = address.requestAddress
        cell.jobSummary.text = date.preferredTimeAndDate
        
        return cell
    }
    
    func fetchData() {
        let realm = try! Realm()
       
        
        renterRequestArray = realm.objects(RenterRequest.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "HistoryData" {
            if let renterMaintenanceHistory = segue.destination as? RenterMaintenanceHistory {
                renterMaintenanceHistory.passedUUID = uuidForRequest
            }
        }
    }

}
