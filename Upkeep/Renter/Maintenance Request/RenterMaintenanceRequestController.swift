//
//  RenterMaintenanceRequestController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/22/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class RenterMaintenanceRequestController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var requestPriority: UITextField!
    @IBOutlet weak var requestAddress: UITextField!
    @IBOutlet weak var room: UITextField!
    @IBOutlet weak var problemDescription: UITextView!
    @IBOutlet weak var preferredTimeAndDate: UITextField!
    @IBOutlet weak var preferredContactNumber: UITextField!
    @IBOutlet weak var previouslyReported: UISwitch!
    @IBOutlet weak var pets: UISwitch!
    @IBOutlet weak var authorizeEntry: UISwitch!
    
    
    @IBOutlet weak var addPlusButton: UIButton!
    @IBOutlet weak var manageMyAccount: UIView!
    @IBOutlet weak var closeButton: UIButton!
    
    
    @IBAction func plusButtonPressed(_ sender: AnyObject) {
        manageMyAccount.isHidden = false
    }
    
    @IBAction func closeButtonPressed(_ sender: Any) {
        manageMyAccount.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   
    @IBAction func submitRenterRequest(_ sender: Any) {
        let alert = UIAlertController(title: "Maintenance Request Received: Job# 1", message: "Your maintenance request has been received. Your preferred service provider has been contacted. Someone will get back to you shortly", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: {action in
            alert.dismiss(animated: false, completion: nil)
        }))
        
        self.present(alert, animated: true)
    }
    
    
    
    
}
