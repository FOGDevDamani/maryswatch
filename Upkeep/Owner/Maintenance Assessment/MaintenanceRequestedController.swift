//
//  MaintenanceRequestedController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/28/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class MaintenanceRequestedController: UIViewController {
    
    var request: Results<RenterRequest>?
    var ownerPassedUUID = String()
    var realm = try! Realm()
    
    @IBOutlet weak var newRequestAddress: UILabel!
    @IBOutlet weak var newRequestName: UILabel!
    @IBOutlet weak var newRequestPriority: UILabel!
    @IBOutlet weak var newRequestRoom: UILabel!
    @IBOutlet weak var newRequestPreviouslyReported: UILabel!
    @IBOutlet weak var newRequestDescription: UILabel!
    @IBOutlet weak var newRequestAppointmentTime: UILabel!
    @IBOutlet weak var newRequestAccess: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (ownerPassedUUID.count > 0) {
            request = realm.objects(RenterRequest.self).filter("requestId = %@", ownerPassedUUID)
            newRequestAddress.text = request![0].requestAddress
            newRequestPriority.text = request![0].requestPriority
            newRequestRoom.text = String(request![0].room)
            newRequestDescription.text = request![0].problemDescription
            newRequestAppointmentTime.text = request![0].preferredTimeAndDate
            
        } else {
            print("No request data")
        }

        
    }



}
