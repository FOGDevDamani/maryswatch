//
//  SPMaintenanceRequestedController.swift
//  maryswatch
//
//  Created by Damani Turner on 6/28/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

class SPMaintenanceRequestedController: UIViewController {
    
    var request: Results<RenterRequest>?
    var spPassedUUID = String()
    var realm = try! Realm()
    
    @IBOutlet weak var spNewRequestAddress: UILabel!
    @IBOutlet weak var spNewRequestName: UILabel!
    @IBOutlet weak var spNewRequestPriority: UILabel!
    @IBOutlet weak var spNewRequestRoom: UILabel!
    @IBOutlet weak var spNewRequestPreviouslyReported: UILabel!
    @IBOutlet weak var spNewRequestDescription: UILabel!
    @IBOutlet weak var spNewRequestAppointedTime: UILabel!
    @IBOutlet weak var spNewRequestAccess: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if (spPassedUUID.count > 0) {
            request = realm.objects(RenterRequest.self).filter("requestId = %@", spPassedUUID)
            spNewRequestAddress.text = request![0].requestAddress
            spNewRequestPriority.text = request![0].requestPriority
            spNewRequestRoom.text = String(request![0].room)
            spNewRequestDescription.text = request![0].problemDescription
            spNewRequestAppointedTime.text = request![0].preferredTimeAndDate
        } else {
            print("No request data")
        }
    }

    
    

    

}
