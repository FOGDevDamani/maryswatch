//
//  RenterMaintenanceHistoryController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/21/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class RenterMaintenanceHistory: UIViewController {
    
    var request: Results<RenterRequest>?
    var passedUUID = String()
    var realm = try! Realm()
    
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
    

    var renterHistoryAddress: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if (passedUUID.count > 0) {
            request = realm.objects(RenterRequest.self).filter("requestId = %@", passedUUID)
            renterHIstoryAddress.text = request![0].requestAddress
        } else {
            print("No data to pass")
        }
    }

    

}
