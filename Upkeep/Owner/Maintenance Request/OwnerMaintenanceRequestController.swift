//
//  OwnerMaintenanceRequestController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/20/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

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
    
    
    var ownerRequest: Results<OwnerRequest>?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
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
        let newOwnerRequest = OwnerRequest()
        newOwnerRequest.setValue(self.ownerRequestAddress!.text, forKey: "ownerRequestAddress")
        newOwnerRequest.setValue(self.ownerRequestPreviouslyReported!.isOn, forKey: "ownerRequestPreviouslyReported")
        newOwnerRequest.setValue(self.ownerRequestPreferredTimeAndDate!.text, forKey: "ownerRequestPreferredTimeAndDate")
        newOwnerRequest.setValue(self.ownerRequestPets!.isOn, forKey: "ownerRequestPets")
        newOwnerRequest.setValue(self.OwnerRequestAuthorizeEntry!.isOn, forKey: "ownerRequestAuthorizedEntry")
        newOwnerRequest.setValue(self.ownerRequestPreferredContactNumber!.text, forKey: "ownerRequestPreferredContactNumber")
        let realm = try! Realm()
        
        do {
            try realm.write {
                realm.add(newOwnerRequest)
                print("added \(newOwnerRequest.ownerAddress) to Realm Database")
                 print("added \(newOwnerRequest.ownerPrevioslyReported) to Realm Database")
                 print("added \(newOwnerRequest.ownerPreferredTimeAndDate) to Realm Database")
                 print("added \(newOwnerRequest.ownerPets) to Realm Database")
                 print("added \(newOwnerRequest.ownerAuthorizedEntry) to Realm Database")
                 print("added \(newOwnerRequest.ownerPreferredContactNumber) to Realm Database")
                
            }
        } catch {
            print(error)
        }
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "OwnerRequestCell"
        
       
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? OwnerMaintenanceRequestCell
            else {
                fatalError("The dequeued cell is not an instance of OwnerMaintenanceRequestCell.")
        }
        
        
        cell.ownerRequestType.text = ""
        cell.ownerRequestUnitNumber.text = ""
        cell.ownerRequestRoom.text = ""
        cell.ownerRequestDescription.text = ""
        cell.saveTableData()
       
        
        return cell
    }
    
}
