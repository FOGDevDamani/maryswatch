//
//  RenterMaintenanceRequestController.swift
//  maryswatch
//
//  Created by Damani Turner on 5/22/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class RenterMaintenanceRequestController: UIViewController {
    
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
    
   
    
    
    
    
}
