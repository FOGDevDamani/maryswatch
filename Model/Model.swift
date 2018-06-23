//
//  Model.swift
//  maryswatch
//
//  Created by Damani Turner on 6/14/18.
//  Copyright © 2018 FOGDev Studios. All rights reserved.
//

import UIKit
import RealmSwift

@objcMembers class RenterRequest: Object {
    dynamic var requestAddress = ""
    dynamic var previouslyReported = false
    dynamic var preferredTimeAndDate = ""
    dynamic var pets = false
    dynamic var authorizedEntry = false
    dynamic var preferredContactNumber = ""
    dynamic var requestPriority = ""
    dynamic var room = 0
    dynamic var problemDescription = ""
    dynamic var requestType = ""
}
