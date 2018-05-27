//
//  OwnerMaintenanceRequestController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class Owner_MaintenanceRequestController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    @IBOutlet weak var manageMyAccount: UIView!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var ownerRequestTable: UITableView!
    
    
    
    
    @IBAction func plusButtonPressed(_ sender: AnyObject) {
        manageMyAccount.isHidden = false
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        manageMyAccount.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "OwnerMaintenanceRequestCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? OwnerMaintenanceRequestCell
            else {
                fatalError("The dequeued cell is not an instance of OwnerMaintenanceRequestCell.")
        }
        
        return cell
    }
    
}
