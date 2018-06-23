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

    @IBOutlet weak var ownerRequestAddress: UITextField!
    @IBOutlet weak var ownerRequestPreviouslyReported: UISwitch!
    @IBOutlet weak var ownerRequestPreferredTimeAndDate: UITextField!
    @IBOutlet weak var ownerRequestPets: UISwitch!
    @IBOutlet weak var OwnerRequestAuthorizeEntry: UISwitch!
    @IBOutlet weak var ownerRequestPreferredContactNumber: UITextField!
    
    
    @IBAction func plusButtonPressed(_ sender: AnyObject) {
        manageMyAccount.isHidden = false
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        manageMyAccount.isHidden = true
    }
    
    
    var defaults = UserDefaults.standard
    
    var unitArray = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        defaults.set(unitArray, forKey: "unitArray")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    @IBAction func submitOwnerRequest(_ sender: Any) {
        let alert = UIAlertController(title: "Maintenance Request Received: Job# 1", message: "Your maintenance request has been received. Your preferred service provider has been contacted. Someone will get back to you shortly", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: {action in
            alert.dismiss(animated: false, completion: nil)
        }))
        
        self.present(alert, animated: true)
        
        saveRequest()
        
    }
    
    
    func saveRequest() {
        defaults.set(ownerRequestAddress.text, forKey: "ownerRequestAddress")
        defaults.set(ownerRequestPreviouslyReported, forKey: "ownerRequestPreviouslyReported")
        defaults.set(ownerRequestPreferredTimeAndDate.text, forKey: "ownerRequestPreferredTimeAndDate")
        defaults.set(ownerRequestPets, forKey: "ownerRequestPets")
        defaults.set(OwnerRequestAuthorizeEntry, forKey: "ownerRequestAuthorizeEntry")
        defaults.set(ownerRequestPreferredContactNumber.text, forKey: "ownerRequestPreferredContactNumber")
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return unitArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "OwnerRequestCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? OwnerMaintenanceRequestCell
            else {
                fatalError("The dequeued cell is not an instance of OwnerMaintenanceRequestCell.")
        }
        
        cell.ownerRequestType.text = unitArray[indexPath.row]
        cell.ownerRequestUnitNumber.text = unitArray[indexPath.row]
        cell.ownerRequestRoom.text = unitArray[indexPath.row]
        cell.ownerRequestDescription.text = unitArray[indexPath.row]
        
        return cell
    }
    
}
