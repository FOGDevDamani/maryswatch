//
//  RenterMaintenanceHistoryController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit

class RenterMaintenanceHistory: UIViewController {
    
    @IBOutlet weak var RenterHistoryPriority: UITextField!
    @IBOutlet weak var renterHistoryType: UITextField!
    @IBOutlet weak var renterHIstoryAddress: UITextField!
    @IBOutlet weak var renterHistoryRoom: UITextField!
    @IBOutlet weak var renterHIstoryProblemDescription: UITextView!
    @IBOutlet weak var renterHistoryPreferredTimeAndDate: UITextField!
    @IBOutlet weak var renterHistoryPets: UISwitch!
    @IBOutlet weak var renterHistoryAuthorizedEntry: UISwitch!
    @IBOutlet weak var renterHIstoryPreferredContactNumber: UITextField!
    @IBOutlet weak var renterHistoryPreviouslyReported: UISwitch!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func showRenterRequest() {
        
    }

}
