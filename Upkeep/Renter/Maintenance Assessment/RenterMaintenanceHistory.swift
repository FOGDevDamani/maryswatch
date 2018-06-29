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
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if (passedUUID.count > 0) {
            request = realm.objects(RenterRequest.self).filter("requestId = %@", passedUUID)
            RenterHistoryPriority.text = request![0].requestPriority
            renterHistoryType.text = request![0].requestType
            renterHIstoryAddress.text = request![0].requestAddress
            renterHistoryRoom.text = String(request![0].room)
            renterHIstoryProblemDescription.text = request![0].problemDescription
            renterHistoryPreferredTimeAndDate.text = request![0].preferredTimeAndDate
            renterHistoryPets.isOn = request![0].pets
            renterHistoryAuthorizedEntry.isOn = request![0].authorizedEntry
            renterHIstoryPreferredContactNumber.text = request![0].preferredContactNumber
            renterHistoryPreviouslyReported.isOn = request![0].previouslyReported
            
        } else {
            print("No data to pass")
        }
    }

    

}
